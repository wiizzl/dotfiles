#!/bin/bash

fedora="$(rpm -E %fedora)"
copr="https://download.copr.fedorainfracloud.org/results"

dnf install -y \
  --repofrompath="terra,https://repos.fyralabs.com/terra${fedora}" \
  --setopt=terra.gpgkey="https://repos.fyralabs.com/terra${fedora}/key.asc" \
  --setopt=terra.priority=100 \
  --repofrompath="hyprland,${copr}/lionheartp/Hyprland/fedora-${fedora}-x86_64" \
  --setopt=hyprland.gpgkey="${copr}/lionheartp/Hyprland/pubkey.gpg" \
  --repofrompath="hyprmoncfg,${copr}/paolino/hyprmoncfg/fedora-${fedora}-x86_64" \
  --setopt=hyprmoncfg.gpgkey="${copr}/paolino/hyprmoncfg/pubkey.gpg" \
  \
  greetd \
  noctalia-greeter \
  uwsm \
  \
  hyprland \
  hyprland-guiutils \
  hyprmoncfg \
  hyprpicker \
  \
  noctalia \
  xdg-desktop-portal-hyprland \
  xdg-desktop-portal-gtk \
  xdg-user-dirs \
  gnome-keyring \
  \
  adw-gtk3-theme \
  hyprqt6engine \
  papirus-icon-theme \
  papirus-icon-theme-dark \
  papirus-icon-theme-light \
  bibata-cursor-theme \
  jetbrainsmono-nerd-fonts \
  \
  fish \
  starship \
  zoxide \
  fzf \
  bat \
  eza \
  chezmoi \
  mise \
  \
  gcc \
  gcc-c++ \
  make \
  \
  podman-docker \
  docker-compose \
  @virtualization \
  \
  tailscale \
  system-config-printer \
  \
  kitty \
  nautilus \
  helium-browser-bin \
  zed \
  mpv
