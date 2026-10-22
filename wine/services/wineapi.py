import logging
import re
import unicodedata

import requests

logger = logging.getLogger(__name__)

BASE_URL = "https://api.wineapi.io"
TIMEOUT = 15
MAX_SEARCH_CALLS = 8

WORD_RE = re.compile(r"[\w'À-ſ]+", re.UNICODE)
STOP_WORDS = {
    'de', 'du', 'des', 'la', 'le', 'les', 'un', 'une', 'et', 'a', 'au', 'aux',
    'en', 'the', 'of', 'and', 'd', 'l', 'sur', 'par', 'en'
}


def normalize(text):
    """Minuscules sans accents, espaces normalises."""
    text = unicodedata.normalize('NFKD', str(text or ''))
    text = ''.join(c for c in text if not unicodedata.combining(c))
    return ' '.join(text.lower().split())


def tokenize(query):
    """Mots significatifs de la requete, sans les mots vides, dans l'ordre saisi."""
    tokens = []
    seen = set()
    for word in WORD_RE.findall(query or ''):
        if len(word) < 2:
            continue
        key = normalize(word)
        if not key or key in STOP_WORDS or key in seen:
            continue
        seen.add(key)
        tokens.append(word)
    return tokens


class WineApiError(Exception):
    pass


class WineApiClient:
    def __init__(self, api_key):
        self.api_key = api_key

    @property
    def enabled(self):
        return bool(self.api_key)

    def _headers(self):
        return {"X-API-Key": self.api_key}

    def search(self, query, limit=15, offset=0):
        if not self.enabled:
            raise WineApiError("Clé API wineapi.io non configurée")
        try:
            response = requests.get(
                "{}/wines/search".format(BASE_URL),
                headers=self._headers(),
                params={"q": query, "limit": limit, "offset": offset},
                timeout=TIMEOUT,
            )
        except requests.RequestException as exc:
            logger.warning("wineapi search failed: %s", exc)
            raise WineApiError("Erreur de communication avec wineapi.io")
        if response.status_code == 401:
            raise WineApiError("Clé API wineapi.io invalide")
        if response.status_code == 429:
            raise WineApiError("Limite de requêtes wineapi.io atteinte")
        if response.status_code != 200:
            logger.warning("wineapi search status %s: %s", response.status_code, response.text[:200])
            raise WineApiError("wineapi.io a renvoyé une erreur ({})".format(response.status_code))
        return response.json()

    def _search_safe(self, query, limit):
        try:
            data = self.search(query, limit=limit)
        except WineApiError as exc:
            logger.warning("wineapi search variant failed (%s): %s", query, exc)
            return None
        return data or {}

    @staticmethod
    def _clean(data, total):
        """L'API renvoie des resultats "proches" meme quand total est faible:
        on ne garde que les correspondances exactes annoncees par total."""
        items = data.get('results') or []
        if total and total < len(items):
            items = items[:total]
        return items

    def search_resilient(self, query, limit=15):
        """Recherche elargie.

        L'API wineapi.io fait une recherche par phrase contiguous sur le nom du vin:
        l'ordre des mots compte ("Callipyge rouge" trouve, "rouge Callipyge" non).
        Si la requete ne donne rien, on retente avec l'ordre inverse puis avec une
        recherche "tous les mots" filtree localement sur le nom du vin.
        """
        query = (query or '').strip()
        calls = 1
        primary = self._search_safe(query, limit) or {}
        total = int(primary.get('total') or 0)
        if total:
            return {
                'results': self._clean(primary, total),
                'total': total,
                'query': query,
                'fallback': False,
            }

        tokens = tokenize(query)
        if len(tokens) < 2:
            return {'results': [], 'total': 0, 'query': query, 'fallback': False}

        reversed_query = ' '.join(reversed(tokens))
        if normalize(reversed_query) != normalize(query) and calls < MAX_SEARCH_CALLS:
            calls += 1
            data = self._search_safe(reversed_query, limit) or {}
            total = int(data.get('total') or 0)
            if total:
                return {
                    'results': self._clean(data, total),
                    'total': total,
                    'query': reversed_query,
                    'fallback': True,
                }

        merged = []
        seen = set()
        for token in sorted(tokens, key=len, reverse=True):
            if calls >= MAX_SEARCH_CALLS:
                break
            calls += 1
            data = self._search_safe(token, limit) or {}
            for item in data.get('results') or []:
                item_id = item.get('id')
                if item_id in seen:
                    continue
                seen.add(item_id)
                merged.append(item)

        wanted = [normalize(token) for token in tokens]
        matches = []
        for item in merged:
            haystack = normalize(' '.join([
                item.get('name') or '',
                item.get('winery') or '',
                item.get('region') or '',
                item.get('country') or '',
            ]))
            score = sum(1 for word in wanted if word in haystack)
            if score:
                matches.append((score, item))

        if not matches:
            return {'results': [], 'total': 0, 'query': query, 'fallback': False}

        best = max(score for score, _ in matches)
        results = [item for score, item in matches if score == best]
        results.sort(key=lambda item: -(item.get('averageRating') or 0))
        return {
            'results': results[:limit],
            'total': len(results),
            'query': query,
            'fallback': True,
        }

    def detail(self, wine_id):
        if not self.enabled:
            raise WineApiError("Clé API wineapi.io non configurée")
        try:
            response = requests.get(
                "{}/wines/{}".format(BASE_URL, wine_id),
                headers=self._headers(),
                timeout=TIMEOUT,
            )
        except requests.RequestException as exc:
            logger.warning("wineapi detail failed: %s", exc)
            raise WineApiError("Erreur de communication avec wineapi.io")
        if response.status_code == 401:
            raise WineApiError("Clé API wineapi.io invalide")
        if response.status_code == 429:
            raise WineApiError("Limite de requêtes wineapi.io atteinte")
        if response.status_code == 404:
            raise WineApiError("Vin introuvable sur wineapi.io")
        if response.status_code != 200:
            logger.warning("wineapi detail status %s: %s", response.status_code, response.text[:200])
            raise WineApiError("wineapi.io a renvoyé une erreur ({})".format(response.status_code))
        return response.json()
