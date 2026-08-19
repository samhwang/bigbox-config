#!/bin/sh

# Create Arr stack configs.
# Prerequisite:
# - 1password installed and logged in

echo "Creating decluttarr config"
OP_ACCOUNT=my.1password.com op inject -i ./config/decluttarr/config.template.yaml -o ./config/decluttarr/config.yaml

echo "Creating arr stack config"
OP_ACCOUNT=my.1password.com op inject -i ./docker-compose.template.yaml -o ./docker-compose.yaml
