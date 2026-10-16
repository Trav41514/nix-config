# Core system
* ftp:
  - 20
  - 21
* ssh:
  - 22
* samba:
  - 139
  - 445
* reverse proxy:
  - 80
  - 443

# Core services
* Portainer:
  - 3000 [proxied via https://portainer.dawn.internal]
* Adguard Home:
  - 53
  - 3001 [proxied via https://adguard.dawn.internal]
* Vaultwarden:
  - 3002 [proxied via https://vault.dawn.internal]
* Immich:
  - 3003 [proxied via https://immich.dawn.internal]

# Media services
* qBittorrent:
  - 4001 [proxied via https://torrent.dawn.internal]
  - 6881/udp
* Jellyfin:
  - 4002 [proxied via https://jellyfin.dawn.internal]
  - 7359/udp
* Radarr:
  - 4003 [proxied via https://radarr.dawn.internal]
* Sonarr:
  - 4004 [proxied via https://sonarr.dawn.internal]

# Testing services
* Owncast:
  - 5001 [proxied via https://owncast.dawn.internal]

# Spacebar services
* App:
  - 6000 [proxied via https://spacebar.dawn.internal]
* API:
  - 6001 [proxied via https://sb-api.dawn.internal]
* Gateway:
  - 6002 [proxied via https://sb-gateway.dawn.internal]
* CDN:
  - 6003 [proxied via https://sb-cdn.dawn.internal]
* Voice:
  - 6004 [proxied via https://sb-voice.dawn.internal]