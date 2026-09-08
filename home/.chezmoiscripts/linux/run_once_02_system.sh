#!/bin/bash
set -euo pipefail

sudo dnf install --setopt=install_weak_deps=False -y \
  hyprland xdg-desktop-portal-hyprland polkit-gnome ghostty awww \
  ly \
  git \
  @virtualization \
  tailscale \
  fish \
  zed vesktop vicinae helium-browser-bin

sudo systemctl enable ly
sudo systemctl enable tailscaled
sudo systemctl disable NetworkManager-wait-online