#!/bin/bash
set -euo pipefail

fish="$(command -v fish)" || exit 0

if [[ "$(getent passwd "$USER" | cut -d: -f7)" != "$fish" ]]; then
  chsh -s "$fish"
fi
