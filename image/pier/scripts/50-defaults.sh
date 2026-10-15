#!/bin/bash

sed -i 's|^SHELL=.*|SHELL=/usr/bin/fish|' /etc/default/useradd

rm /usr/share/wayland-sessions/hyprland.desktop

mkdir -p /tmp/schemas
find /usr/share/glib-2.0/schemas -type f ! -name '*.gschema.override' -exec cp {} /tmp/schemas \;
cp /usr/share/glib-2.0/schemas/zz1-pier.gschema.override /tmp/schemas
glib-compile-schemas --strict /tmp/schemas
glib-compile-schemas /usr/share/glib-2.0/schemas
