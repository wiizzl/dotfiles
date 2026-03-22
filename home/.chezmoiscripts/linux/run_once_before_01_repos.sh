#!/bin/bash

set -euo pipefail

# RPM Fusion
sudo dnf install -y \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Terra
# sudo dnf install -y --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release

# Flathub
flatpak remote-delete --force fedora 2>/dev/null || true
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Copr
sudo dnf copr enable -y jdxcode/mise
sudo dnf copr enable -y quadratech188/vicinae
sudo dnf copr enable -y che/zed

# VSCode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
if [ ! -f /etc/yum.repos.d/vscode.repo ]; then
    sudo tee /etc/yum.repos.d/vscode.repo > /dev/null <<EOF
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF
fi