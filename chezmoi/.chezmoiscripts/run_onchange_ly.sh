#!/bin/bash
set -euo pipefail
# hash: {{ include "dot_config/ly/config.ini" | sha256sum }}

if [ -f "$HOME/.config/ly/config.ini" ]; then
  sudo cp "$HOME/.config/ly/config.ini" /etc/ly/config.ini
fi
