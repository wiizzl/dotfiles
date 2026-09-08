#!/bin/bash
set -euo pipefail

sudo dnf install -y ffmpeg
sudo dnf group install -y multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin