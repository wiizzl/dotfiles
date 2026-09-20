#!/bin/bash
set -euo pipefail

flatpak --user override --filesystem="${HOME}/.config/Kvantum:ro"
flatpak --user override --filesystem="${HOME}/.themes:ro"
flatpak --user override --filesystem="${HOME}/.icons:ro"
