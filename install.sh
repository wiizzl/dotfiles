#!/bin/sh
set -euo pipefail

if [ ! -f "$HOME/.local/bin/mise" ]; then
  curl -sL https://mise.run | sh
fi

read -rp "Enter your Vault url: " VAULT_URL
read -rp "Enter your GitHub username: " GIT_USERNAME

~/.local/bin/mise exec chezmoi bitwarden -- bash -c '
  set -euo pipefail

  if bw status | grep -q "\"status\":\"unauthenticated\""; then
    bw config server "$1"
    bw login
  fi

  export BW_SESSION=$(bw unlock --raw)

  chezmoi init --apply "$2"

' _ "$VAULT_URL" "$GIT_USERNAME"