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

### Spicetify

Open Spotify and log in for at least 60 seconds before running Spicetify. This allows Spotify to generate the files that Spicetify needs to function. Then run thoses commands :

```sh
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh

sudo chmod a+wr /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify
sudo chmod a+wr -R /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify/Apps
```

Then apply the config :

```sh
spicetify backup apply
```

### Zen browser

#### Stylus

Download this [configuration](https://github.com/catppuccin/userstyles/releases/download/all-userstyles-export/import.json) and import it.

#### Dark reader

Follow [this guide](https://github.com/catppuccin/dark-reader?tab=readme-ov-file#usage).
