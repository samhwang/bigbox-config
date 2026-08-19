#!/bin/sh

# Copy config files into BigBox
# Prerequisites:
# - ssh config created on host machine

echo "transferring config files into bigbox"
rsync -rzvhP ./config/traefik samhwang@bigbox:/mnt/vault/arr2/config
rsync -rzvhP ./config/decluttarr samhwang@bigbox:/mnt/vault/arr2/config
rsync -zvhP ./docker-compose.yaml samhwang@bigbox:/mnt/vault/arr2/docker-compose.yaml
