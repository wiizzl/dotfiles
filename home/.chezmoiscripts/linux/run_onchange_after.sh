#!/bin/bash

set -euo pipefail

SESSION_FILE="/usr/share/wayland-sessions/cosmic.desktop"

if [ -f "$SESSION_FILE" ] && ! grep -q "COSMIC_DATA_CONTROL_ENABLED" "$SESSION_FILE"; then
    sudo sed -i 's|^Exec=/usr/bin/start-cosmic|Exec=env COSMIC_DATA_CONTROL_ENABLED=1 /usr/bin/start-cosmic|' "$SESSION_FILE"
fi
