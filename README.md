# atomic

My Fedora Atomic setup: custom [bootc](https://bootc-dev.github.io/bootc) images for my machines, and [`chezmoi`](https://github.com/twpayne/chezmoi) for my dotfiles.

- [`image`](image) builds the systems, rebuilt weekly and published to `ghcr.io/wiizzl/atomic`.
- [`dotfiles`](dotfiles) holds my user settings and tools.

## Images

| Tag                      | Base                                                     | For                                                           |
| ------------------------ | -------------------------------------------------------- | ------------------------------------------------------------- |
| [`pier`](image/pier)     | [Universal Blue](https://universal-blue.org) `base-main` | My Hyprland workstation, paired with the [dotfiles](dotfiles) |
| [`family`](image/family) | [Aurora](https://getaurora.dev)                          | A ready-to-use KDE desktop for my family                      |

Each image has its own installation guide in its directory.
