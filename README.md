# atomic

My Fedora Atomic setup: custom [bootc](https://bootc-dev.github.io/bootc) images for my machines, and [`chezmoi`](https://chezmoi.io) for my dotfiles.

- [`image`](image) builds the systems, rebuilt weekly and published to `ghcr.io/wiizzl/atomic`.
- [`dotfiles`](dotfiles) holds my user settings and tools.

## Images

| Tag                      | Base                                                     | For                                                           |
| ------------------------ | -------------------------------------------------------- | ------------------------------------------------------------- |
| [`pier`](image/pier)     | [Universal Blue](https://universal-blue.org) `base-main` | My Hyprland workstation, paired with the [dotfiles](dotfiles) |
| [`family`](image/family) | [Aurora](https://getaurora.dev)                          | A ready-to-use KDE desktop for my family                      |

## Installation

Download the ISO of the image, write it to a USB drive and boot from it. The installer asks for the language, keyboard, disk and user.

- [`atomic-pier.iso`](https://pub-d08c18f0133e42f199c9b17a3e5b6e37.r2.dev/atomic-pier.iso) ([sha256](https://pub-d08c18f0133e42f199c9b17a3e5b6e37.r2.dev/atomic-pier.iso.sha256))
- [`atomic-family.iso`](https://pub-d08c18f0133e42f199c9b17a3e5b6e37.r2.dev/atomic-family.iso) ([sha256](https://pub-d08c18f0133e42f199c9b17a3e5b6e37.r2.dev/atomic-family.iso.sha256))

Already on Fedora Atomic? Switch instead and reboot:

```sh
sudo bootc switch ghcr.io/wiizzl/atomic:<tag>
systemctl reboot
```

Some images need a few extra steps after installation, described in their directory.

### Dotfiles only

To get only my user settings and tools on any Linux, see [`dotfiles`](dotfiles).
