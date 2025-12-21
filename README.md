# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

<img src="https://raw.githubusercontent.com/twpayne/chezmoi/refs/heads/master/assets/images/mono.png" width="150" style="margin-bottom:10px;" />

Used to maintain my devices across different environments:

- Arch Linux (minimal install)
- macOS

## Installation

If you do not have [`chezmoi`](https://chezmoi.io/install) installed, here is a one-liner:

```sh
# with curl
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply wiizzl

# or, with wget
sh -c "$(wget -qO- get.chezmoi.io)" -- init --apply wiizzl
```

Otherwise, simply run:

```sh
chezmoi init wiizzl --apply
```

> [!IMPORTANT]
> After installation, reboot your system to ensure all necessary services start.
