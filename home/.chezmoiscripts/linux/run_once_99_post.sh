#!/bin/bash
set -euo pipefail

chsh -s /usr/bin/fish

mise install

sudo dnf clean all
sudo dnf autoremove -y