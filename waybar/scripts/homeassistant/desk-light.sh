#!/bin/bash

source /home/choffmann/.config/HyprScape/secrets.conf

curl \
    -H "Authorization: Bearer $HOMEASSISTANT_TOKEN" \
    -H "Content-Type: application/json" \
    -d '{"entity_id": "light.schreibtisch"}' \
    "https://cloud.jgdperl.com/api/services/light/toggle"
