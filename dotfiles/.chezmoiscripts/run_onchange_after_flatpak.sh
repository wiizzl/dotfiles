#!/bin/bash
set -euo pipefail

command -v flatpak >/dev/null || exit 0

for repo in /etc/flatpak/remotes.d/*.flatpakrepo; do
  flatpak remote-add --user --if-not-exists "$(basename "$repo" .flatpakrepo)" "$repo"
done

flatpak install --user --noninteractive flathub \
  com.bitwarden.desktop \
  io.dbeaver.DBeaverCommunity \
  com.usebruno.Bruno \
  org.localsend.localsend_app \
  dev.vencord.Vesktop

flatpak override --user \
  --filesystem=xdg-config/gtk-3.0:ro \
  --filesystem=xdg-config/gtk-4.0:ro \
  --filesystem=xdg-data/icons:ro

flatpak override --user --filesystem=home dev.vencord.Vesktop
