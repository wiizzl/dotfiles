#!/bin/bash

systemctl enable \
  cups.service \
  greetd.service \
  tailscaled.service \
  rpm-ostreed-automatic.timer \
  flatpak-preinstall.service \
  flatpak-overrides.service

systemctl disable flatpak-add-fedora-repos.service
systemctl --global enable podman.socket
