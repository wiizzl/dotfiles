My user settings and tools, managed with [chezmoi](https://chezmoi.io). The tools they rely on come preinstalled with the [`pier`](../image/pier) image, but they work on any Linux.

## Requirements

`chezmoi`, `fish`, `starship`, `zoxide`, `fzf`, `eza`, `bat`, `mise` and the JetBrainsMono Nerd Font. Flatpaks are only installed when `flatpak` is available.

## Installation

```sh
chezmoi init wiizzl/atomic --apply
```

To apply only the files, add `--exclude scripts`.
