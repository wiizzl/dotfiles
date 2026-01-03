#!/bin/bash

export MONITOR=$(hyprctl monitors -j | jq -r '.[0].name')
hyprctl keyword '$monitor' "$MONITOR"

envsubst < ~/.config/waybar/config.jsonc.template > ~/.config/waybar/config.jsonc
killall waybar
waybar &