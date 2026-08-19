#!/bin/sh

# Copy config files into BigBox
# Prerequisites:
# - ssh config created on host machine

echo "transferring config files into bigbox"
rsync -rzvhP ./config/traefik samhwang@bigbox:/mnt/vault/arr2/config/traefik
rsync -rzvhP ./config/decluttarr samhwang@bigbox:/mnt/vault/arr2/config/decluttarr
rsync -zvhP ./docker-compose.yaml samhwang@bigbox:/mnt/vault/arr2/config/docker-compose.yaml
