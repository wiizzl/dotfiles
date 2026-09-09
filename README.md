# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

<a href="https://chezmoi.io">
  <img src="https://raw.githubusercontent.com/twpayne/chezmoi/refs/heads/master/assets/images/mono.png" width="150" />
</a>

Used to maintain a consistent setup across different environments:

- [Fedora Everything](https://fedoraproject.org/misc/#everything)
- [~~macOS~~](https://apple.com/os/macos/) (not yet supported...)

## Installation

> [!WARNING]
> If you want to try these dotfiles, fork this repository first, review the files, and remove anything you do not want. Do not blindly apply settings you do not understand. Use at your own risk.

### Prerequisites

- A clean installation of your operating system
- [git](https://git-scm.com/install)

> [!NOTE]
> Before running the install script, ensure your SSH keys are saved in your vault as `git-auth` and `git-sign`. These exact names are required for the script to function.

### Steps

Run the [install script](./install.sh), which will check for missing dependencies and apply the dotfiles:

```sh
sh -c "$(curl -fsLS https://raw.githubusercontent.com/wiizzl/dotfiles/main/install.sh)"
```

> [!IMPORTANT]
> After installation, reboot your system to ensure everything works as expected. Enable the SSH agent in the Bitwarden app.
