# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

<a href="https://chezmoi.io">
  <img src="https://raw.githubusercontent.com/twpayne/chezmoi/refs/heads/master/assets/images/mono.png" width="150" />
</a>

Used to maintain a consistent setup across different environments:

- [Fedora (COSMIC Spin)](https://fedoraproject.org/fr/spins/cosmic)
- [macOS](https://www.apple.com/fr/os/macos)

## What's next ?

See [`TODO.md`](./TODO.md).

## Installation

> [!WARNING]
> If you want to try these dotfiles, fork this repository first, review the files, and remove anything you do not want. Do not blindly apply settings you do not understand. Use at your own risk.

### Prerequisites

Before running the install script, make sure you have an **SSH key** stored in your Bitwarden vault:

1. Generate an SSH key pair if you don't have one:

    ```sh
    ssh-keygen -t ed25519 -C "your@email.com"
    ```

2. In your Bitwarden vault, create a new item of type SSH Key and name it exactly `Git`.

3. Paste your private key (`~/.ssh/id_ed25519`) into the Private Key field.

4. Add the public key (`~/.ssh/id_ed25519.pub`) to your [GitHub account](https://github.com/settings/keys).

### Steps

Run the install script, which will set up the Bitwarden CLI, authenticate, and apply the dotfiles:

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

### Browser (theming)

Download this [configuration](https://github.com/catppuccin/userstyles/releases/download/all-userstyles-export/import.json) and import it in Stylus.
