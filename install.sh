#!/bin/bash

set -e

sudo dnf install -y unzip curl chezmoi

if ! command -v bw &> /dev/null; then
    curl -Lso bw.zip "https://vault.bitwarden.com/download/?app=cli&platform=linux"
    sudo unzip -q bw.zip -d /usr/local/bin/
    sudo chmod +x /usr/local/bin/bw
    rm bw.zip
fi

if bw status | grep -q '"status":"unauthenticated"'; then
    bw config server https://vault.bitwarden.eu
    bw login
fi

export BW_SESSION=$(bw unlock --raw)

read -rp "Enter your GitHub username: " GITHUB_USERNAME
chezmoi init --apply "$GITHUB_USERNAME"