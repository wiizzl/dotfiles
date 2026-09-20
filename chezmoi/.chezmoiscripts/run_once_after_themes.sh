#!/bin/bash
set -euo pipefail

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'catppuccin-mocha'


flatpak --user override --filesystem="${HOME}/.config/Kvantum:ro"
flatpak --user override --filesystem="${HOME}/.themes:ro"
flatpak --user override --filesystem="${HOME}/.icons:ro"
