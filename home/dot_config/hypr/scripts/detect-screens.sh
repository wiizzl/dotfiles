#!/bin/bash

export MONITOR=$(hyprctl monitors -j | jq -r '.[0].name')

hyprctl --batch "
  keyword workspace 1, monitor:$MONITOR, default:true, persistent:true ;
  keyword workspace 2, monitor:$MONITOR, persistent:true ;
  keyword workspace 3, monitor:$MONITOR, persistent:true ;
  keyword workspace 4, monitor:$MONITOR, persistent:true ;
  keyword workspace 5, monitor:$MONITOR, persistent:true ;
  keyword workspace 6, monitor:$MONITOR, persistent:true ;
  keyword workspace 7, monitor:$MONITOR, persistent:true ;
  keyword workspace 8, monitor:$MONITOR, persistent:true
"

envsubst < ~/.config/waybar/config.jsonc.template > ~/.config/waybar/config.jsonc
killall waybar
waybar &