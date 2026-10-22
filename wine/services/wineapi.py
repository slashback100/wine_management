import logging
import re
import unicodedata

import requests

logger = logging.getLogger(__name__)

BASE_URL = "https://api.wineapi.io"
TIMEOUT = 15
FALLBACK_LIMIT = 100

WORD_RE = re.compile(r"[\w'’‘À-ſ]+", re.UNICODE)
STOP_WORDS = {
    'de', 'du', 'des', 'la', 'le', 'les', 'un', 'une', 'et', 'a', 'au', 'aux',
    'en', 'the', 'of', 'and', 'd', 'l', 'sur', 'par', 'en',
    'mon', 'ma', 'mes', 'ton', 'ta', 'tes', 'son', 'sa', 'ses',
    'notre', 'nos', 'votre', 'vos', 'leur', 'leurs',
}
COMMON_WORDS = {
    'domaine', 'domaines', 'chateau', 'chateaux', 'clos', 'cuvee', 'cuvees',
    'reserve', 'reserves', 'grand', 'grande', 'grands', 'grandes', 'cru', 'crus',
    'rouge', 'rouges', 'blanc', 'blancs', 'rose', 'roses', 'noir', 'noirs',
    'vin', 'vins', 'wine', 'wines', 'sec', 'secs', 'doux', 'brut', 'bruts',
    'premier', 'premiere', 'vieilles', 'vieille', 'vignes', 'vigne',
    'cote', 'cotes', 'champagne', 'sparkling', 'red', 'white',
}
COLOR_LABELS = {
    'red': 'rouge',
    'white': 'blanc',
    'rosé': 'rose',
    'rose': 'rose',
    'sparkling': 'bulles',
    'champagne': 'bulles',
    'dessert': 'liquoreux',
    'fortified': 'fortifie',
    'orange': 'orange',
}


def normalize(text):
    """Minuscules sans accents, espaces et ligatures normalises."""
    text = str(text or '').replace('’', "'").replace('‘', "'")
    text = text.replace('œ', 'oe').replace('Œ', 'OE').replace('æ', 'ae').replace('Æ', 'AE')
    text = unicodedata.normalize('NFKD', text)
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


def distinctive_token(tokens):
    """Mot le plus discriminant: hors termes generiques de vin et hors millesime."""
    candidates = [
        token for token in tokens
        if normalize(token) not in COMMON_WORDS and not normalize(token).isdigit()
    ]
    if not candidates:
        return None
    return max(candidates, key=lambda token: len(normalize(token)))


class WineApiError(Exception):
    pass


class WineApiRateLimitError(WineApiError):
    pass


def raise_rate_limit(response):
    logger.warning("wineapi.io rate limit exceeded")
    retry_after = (response.headers.get('Retry-After') or '').strip()
    message = "Limite de requêtes wineapi.io atteinte (quota journalier)."
    if retry_after.isdigit():
        seconds = int(retry_after)
        if seconds >= 3600:
            hours = (seconds + 3599) // 3600
            delay = "{} heure{}".format(hours, 's' if hours > 1 else '')
        elif seconds >= 60:
            minutes = (seconds + 59) // 60
            delay = "{} minute{}".format(minutes, 's' if minutes > 1 else '')
        else:
            delay = "{} seconde{}".format(seconds, 's' if seconds > 1 else '')
        message += " Réessayez dans environ {}.".format(delay)
    else:
        message += " Réessayez plus tard."
    raise WineApiRateLimitError(message)


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
            raise_rate_limit(response)
        if response.status_code != 200:
            logger.warning("wineapi search status %s: %s", response.status_code, response.text[:200])
            raise WineApiError("wineapi.io a renvoyé une erreur ({})".format(response.status_code))
        return response.json()

    def _search_safe(self, query, limit):
        try:
            data = self.search(query, limit=limit)
        except WineApiRateLimitError:
            raise
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
        """Recherche elargie avec un maximum de 2 appels API.

        L'API wineapi.io fait une recherche par phrase contigue: l'ordre des mots
        compte ("Callipyge rouge" trouve, "rouge Callipyge" non). Pour menager le
        quota, on ne relance pas une requete par mot: soit la recherche directe
        suffit, soit on fait un seul appel de secours sur le mot le plus
        discriminant, puis on filtre localement.
        """
        query = (query or '').strip()
        tokens = tokenize(query)

        # Requete longue: la recherche par phrase a peu de chances d'aboutir et
        # enchainerait les appels. On interroge directement le mot discriminant.
        if len(tokens) > 3:
            key = distinctive_token(tokens)
            if key:
                return self._token_search(key, tokens, limit)
            return self._primary_search(query, limit)

        result = self._primary_search(query, limit)
        if result['total'] or len(tokens) < 2:
            return result

        key = distinctive_token(tokens)
        if not key:
            return result
        return self._token_search(key, tokens, limit)

    def _primary_search(self, query, limit):
        data = self._search_safe(query, limit) or {}
        total = int(data.get('total') or 0)
        return {
            'results': self._clean(data, total),
            'total': total,
            'query': query,
            'fallback': False,
        }

    def _token_search(self, key, tokens, limit):
        data = self._search_safe(key, FALLBACK_LIMIT) or {}
        results = self._match_items(data.get('results') or [], tokens)
        return {
            'results': results[:limit],
            'total': len(results),
            'query': key,
            'fallback': True,
        }

    @staticmethod
    def _match_items(items, tokens):
        wanted = [normalize(t) for t in tokens if normalize(t) not in COMMON_WORDS]
        if not wanted:
            wanted = [normalize(t) for t in tokens]
        matches = []
        for item in items:
            wine_type = (item.get('type') or '').lower()
            haystack = normalize(' '.join(str(value or '') for value in [
                item.get('name') or '',
                item.get('winery') or '',
                item.get('region') or '',
                item.get('country') or '',
                item.get('vintage') or '',
                COLOR_LABELS.get(wine_type, ''),
                wine_type,
            ]))
            if all(word in haystack for word in wanted):
                matches.append(item)
        matches.sort(key=lambda item: -(item.get('averageRating') or 0))
        return matches

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
            raise_rate_limit(response)
        if response.status_code == 404:
            raise WineApiError("Vin introuvable sur wineapi.io")
        if response.status_code != 200:
            logger.warning("wineapi detail status %s: %s", response.status_code, response.text[:200])
            raise WineApiError("wineapi.io a renvoyé une erreur ({})".format(response.status_code))
        return response.json()
