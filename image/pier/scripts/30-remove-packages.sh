#!/bin/bash

for pkg in nwg-panel firefox firefox-langpacks htop nvtop tmux vim-enhanced distrobox wofi; do
  if rpm -q "$pkg" >/dev/null; then
    dnf -y remove "$pkg"
  fi
done
