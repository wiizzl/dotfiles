# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

<a href="https://chezmoi.io">
  <img src="https://raw.githubusercontent.com/twpayne/chezmoi/refs/heads/master/assets/images/mono.png" width="150" />
</a>

Used to maintain a consistent setup across different environments:

- [Fedora (COSMIC Spin)](https://fedoraproject.org/fr/spins/cosmic)
- [~~macOS~~](https://apple.com/fr/os/macos) (not yet supported...)

## What's next ?

See [`TODO.md`](./TODO.md).

## Installation

> [!WARNING]
> If you want to try these dotfiles, fork this repository first, review the files, and remove anything you do not want. Do not blindly apply settings you do not understand. Use at your own risk.

### Prerequisites

- [chezmoi](https://chezmoi.io/install)
- [Bitwarden CLI](https://bitwarden.com/help/cli/#download-and-install)

> [!NOTE]
> Before running the install script, ensure your SSH keys are saved in your vault as `git-auth` and `git-sign`. These exact names are required for the script to function.

### Steps

Run the [install script](./install.sh), which will check for missing dependencies and apply the dotfiles:

```sh
sh -c "$(curl -fsLS https://raw.githubusercontent.com/wiizzl/dotfiles/main/install.sh)"
```

> [!IMPORTANT]
> After installation, reboot your system to ensure everything works as expected.

## Manual steps

### Spicetify

Open Spotify and log in for at least 60 seconds before running the commands below. This allows Spotify to generate the files that Spicetify needs to function.

```sh
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh

sudo chmod a+wr /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify
sudo chmod a+wr -R /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify/Apps

spicetify backup apply
```
