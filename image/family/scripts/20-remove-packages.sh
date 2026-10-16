#!/bin/bash

for pkg in tailscale Sunshine; do
  if rpm -q "$pkg" >/dev/null; then
    dnf -y remove "$pkg"
  fi
done
