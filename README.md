# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

Used to maintain my devices across different environments:

- Arch Linux (minimal install)
- macOS

## Installation

If you do not have `chezmoi` installed, here is a one-liner:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply wiizzl
```

Otherwise, simply run:

```sh
chezmoi init wiizzl --apply
```
