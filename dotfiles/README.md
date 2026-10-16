My user settings and tools, managed with [chezmoi](https://www.chezmoi.io). They come preinstalled with the [`pier`](../image/pier) image, but work on any Linux.

## What's inside

- **Shell**: [fish](https://fishshell.com) with [starship](https://starship.rs), [zoxide](https://github.com/ajeetdsouza/zoxide), [fzf](https://github.com/junegunn/fzf), [eza](https://eza.rocks) and [bat](https://github.com/sharkdp/bat)
- **Tools**: [mise](https://mise.jdx.dev) installs Node, Bun, Go, uv and CLI tools such as `gh`, `lazygit` and `claude-code`
- **Apps**: kitty, Zed, git, plus Hyprland, Noctalia and uwsm for the desktop
- **Flatpaks**: Bitwarden, DBeaver, Bruno, LocalSend and Vesktop

## Requirements

`chezmoi`, `fish`, `starship`, `zoxide`, `fzf`, `eza`, `bat`, `mise` and the JetBrainsMono Nerd Font. Flatpaks are only installed when `flatpak` is available.

## Installation

```sh
chezmoi init wiizzl/atomic --apply
```

chezmoi asks whether to use the Bitwarden SSH agent and for your git identity, then sets fish as your login shell, installs the flatpaks and runs `mise install`. To apply only the files, add `--exclude scripts`.
