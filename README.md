# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

Used to maintain my devices across different environments:

- Arch Linux (minimal install)
- macOS

## Installation

### Remotely

If you do not have [`chezmoi`](https://www.chezmoi.io/install) installed, here is a one-liner:

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
> Reboot your system to start all necessary services.

### Locally

Clone this repository, then run the [install script](./install.sh):

```sh
./install.sh
```

> [!IMPORTANT]
> Reboot your system to start all necessary services.
