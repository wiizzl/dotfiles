#!/bin/bash

set -euo pipefail

sudo dnf group upgrade core -y
sudo dnf check-update
sudo dnf update -y
