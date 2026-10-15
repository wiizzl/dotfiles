#!/bin/bash

if rpm -q kmod-nvidia >/dev/null; then
  cat >>/etc/xdg/uwsm/env <<'EOF'

export LIBVA_DRIVER_NAME="nvidia"
export __GLX_VENDOR_LIBRARY_NAME="nvidia"
EOF
fi
