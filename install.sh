#!/bin/bash

set -e

sudo dnf install -y unzip curl chezmoi

mkdir -p ~/.local/bin
curl -Lso bw.zip "https://vault.bitwarden.com/download/?app=cli&platform=linux"
unzip -q bw.zip -d ~/.local/bin/
chmod +x ~/.local/bin/bw
rm bw.zip

export PATH="$HOME/.local/bin:$PATH"

bw config server https://vault.bitwarden.eu
bw login

export BW_SESSION=$(bw unlock --raw)

chezmoi init --apply wiizzl