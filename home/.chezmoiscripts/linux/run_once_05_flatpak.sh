#!/bin/bash
set -euo pipefail

sudo dnf install -y flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub \
  it.mijorus.gearlever \
  io.github.flattool.Warehouse \
  org.onlyoffice.desktopeditors \
  com.obsproject.Studio \
  org.localsend.localsend_app \
  io.dbeaver.DBeaverCommunity \
  com.github.tchx84.Flatseal \
  com.usebruno.Bruno \
  com.bitwarden.desktop \
  io.missioncenter.MissionCenter \
  eu.betterbird.Betterbird