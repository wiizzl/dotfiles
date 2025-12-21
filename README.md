# dotfiles

<div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:20px;">
  <p>My dotfiles, managed with <a href="https://github.com/twpayne/chezmoi"><code>chezmoi</code></a></p>
  <img src="https://raw.githubusercontent.com/twpayne/chezmoi/refs/heads/master/assets/images/mono.png" width="100" />
</div>

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
