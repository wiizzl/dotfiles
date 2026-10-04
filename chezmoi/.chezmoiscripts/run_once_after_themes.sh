#!/bin/bash
set -euo pipefail


gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark'

flatpak --user override --filesystem=xdg-config/gtk-3.0:ro
flatpak --user override --filesystem=xdg-config/gtk-4.0:ro
flatpak --user override --filesystem="${HOME}/.icons:ro"
