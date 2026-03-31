# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

<a href="https://chezmoi.io">
  <img src="https://raw.githubusercontent.com/twpayne/chezmoi/refs/heads/master/assets/images/mono.png" width="150" />
</a>

Used to maintain a consistent setup across different environments:

- [Fedora (COSMIC Spin)](https://fedoraproject.org/fr/spins/cosmic)
- [~~macOS~~](https://www.apple.com/fr/os/macos) (not yet supported...)

## What's next ?

See [`TODO.md`](./TODO.md).

## Installation

> [!WARNING]
> If you want to try these dotfiles, fork this repository first, review the files, and remove anything you do not want. Do not blindly apply settings you do not understand. Use at your own risk.

### Prerequisites

Before running the install script, make sure you have **two SSH keys** stored in your Bitwarden vault — one for authentication and one for signing:

1. Generate both key pairs if you don't have them:

    ```sh
    ssh-keygen -t ed25519 -C "your@email.com" -f ~/.ssh/id_ed25519
    ssh-keygen -t ed25519 -C "your@email.com" -f ~/.ssh/id_ed25519_sign
    ```

2. In your Bitwarden vault, create two items of type **SSH Key**:

    | Name       | Private Key              | Purpose        |
    | ---------- | ------------------------ | -------------- |
    | `git-auth` | `~/.ssh/id_ed25519`      | Authentication |
    | `git-sign` | `~/.ssh/id_ed25519_sign` | Commit signing |

3. Add both public keys to your [GitHub account](https://github.com/settings/keys) — the authentication one as an **Authentication Key**, and the signing one as a **Signing Key**.

> [!IMPORTANT]
> The items **must** be named exactly `git-auth` and `git-sign` in Bitwarden, as the dotfiles rely on those exact names to retrieve the keys.

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
