#!/bin/bash

source /home/choffmann/.config/HyprScape/secrets.conf

toggle() {
  curl \
    -H "Authorization: Bearer $HOMEASSISTANT_TOKEN" \
    -H "Content-Type: application/json" \
    -d '{"entity_id": "light.schreibtisch"}' \
    "https://cloud.jgdperl.com/api/services/light/toggle"
}

turn_on() {
  curl \
    -H "Authorization: Bearer $HOMEASSISTANT_TOKEN" \
    -H "Content-Type: application/json" \
    -d '{"entity_id": "light.schreibtisch"}' \
    "https://cloud.jgdperl.com/api/services/light/turn_on"
}

turn_off() {
  curl \
    -H "Authorization: Bearer $HOMEASSISTANT_TOKEN" \
    -H "Content-Type: application/json" \
    -d '{"entity_id": "light.schreibtisch"}' \
    "https://cloud.jgdperl.com/api/services/light/turn_off"
}

if [[ $1 == "--toggle" ]]; then
  toggle
elif [[ $1 == "--turn-on" ]]; then
  turn_on
elif [[ $1 == "--turn-off" ]]; then
  turn_off
else
  toggle
fi
