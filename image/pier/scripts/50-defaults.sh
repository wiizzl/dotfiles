#!/bin/bash

sed -i 's|^SHELL=.*|SHELL=/usr/bin/fish|' /etc/default/useradd

echo 'NoDisplay=true' >>/usr/share/wayland-sessions/hyprland.desktop

glib-compile-schemas /usr/share/glib-2.0/schemas
