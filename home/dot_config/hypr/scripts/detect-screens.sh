#!/bin/bash

MON_0=$(hyprctl monitors -j | jq -r '.[0].name')
MON_1=$(hyprctl monitors -j | jq -r '.[1].name')

hyprctl keyword '$mainMonitor' "$MON_0"
hyprctl keyword '$secondaryMonitor' "$MON_1"

hyprctl keyword env MAIN_MONITOR,"$MON_0"
hyprctl keyword env SECONDARY_MONITOR,"$MON_1"

dbus-update-activation-environment --systemd MAIN_MONITOR SECONDARY_MONITOR