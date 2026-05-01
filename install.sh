#!/bin/sh

set -e

for cmd in chezmoi bw; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
        echo "Error: '$cmd' is required." >&2
        exit 1
    fi
done

if bw status | grep -q '"status":"unauthenticated"'; then
    bw config server https://vault.bitwarden.eu
    bw login
fi

export BW_SESSION=$(bw unlock --raw)

read -rp "Enter your GitHub username: " GITHUB_USERNAME
chezmoi init --apply "$GITHUB_USERNAME"