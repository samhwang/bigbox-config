#!/bin/sh

# Run this with your nord vpn token
# TOKEN=XXXXXXX ./get_nordvpn_key.sh

# docker run --rm --cap-add=NET_ADMIN -e TOKEN=$TOKEN ghcr.io/bubuntux/nordvpn:get_private_key
curl https://api.nordvpn.com/v1/users/services/credentials -u "token:${TOKEN}"
