#!/bin/bash
set -euo pipefail
# hash: {{ include "dot_config/dnf/dnf.conf" | sha256sum }}
# hash: {{ include "dot_config/ly/config.ini" | sha256sum }}

sudo cp "$HOME/.config/dnf/dnf.conf" /etc/dnf/dnf.conf

sudo cp "$HOME/.config/ly/config.ini" /etc/ly/config.ini
sudo systemctl restart ly