#!/bin/bash
set -euo pipefail

sudo dnf install -y flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y --user flathub \
  it.mijorus.gearlever \
  io.github.flattool.Warehouse \
  org.onlyoffice.desktopeditors \
  org.localsend.localsend_app \
  io.dbeaver.DBeaverCommunity \
  com.github.tchx84.Flatseal \
  com.usebruno.Bruno \
  com.bitwarden.desktop \
  org.gnome.DejaDup \
  io.missioncenter.MissionCenter \
  eu.betterbird.Betterbird