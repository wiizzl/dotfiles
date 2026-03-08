# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

<a href="https://chezmoi.io">
  <img src="https://raw.githubusercontent.com/twpayne/chezmoi/refs/heads/master/assets/images/mono.png" width="150" />
</a>

Used to maintain my devices across different environments:

- [Fedora (Cosmic Spin)](https://fedoraproject.org/fr/spins/cosmic)
- [macOS](https://www.apple.com/fr/os/macos)

## TODO

See [TODO.md](./TODO.md)

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

> [!WARNING]
> After installation, reboot your system to ensure everything works as expected.

## Manual steps

### Zen browser

#### Stylus

Download this [configuration](https://github.com/catppuccin/userstyles/releases/download/all-userstyles-export/import.json) and import it.

#### Dark reader

Follow [this guide](https://github.com/catppuccin/dark-reader?tab=readme-ov-file#usage).
