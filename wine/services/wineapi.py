import logging

import requests

logger = logging.getLogger(__name__)

BASE_URL = "https://api.wineapi.io"
TIMEOUT = 15


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
