# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi) and optionally provisioned via [Ansible](https://ansible.com).

Used to maintain a consistent setup across different environments:

- [Fedora Everything](https://fedoraproject.org/misc/#everything)
- [macOS](https://apple.com/os/macos/)

## Installation

> [!WARNING]
> Do not blindly apply settings you do not understand. Use at your own risk.

### Option 1: Dotfiles Only

Use this method if you already have your system packages and tools installed and only want to apply the configuration files.

#### Prerequisites

- [git](https://git-scm.com/install)
- [chezmoi](https://chezmoi.io/install)

#### Steps

Run the following commands:

```sh
chezmoi init wiizzl --apply
```

### Option 2: Full System Provisioning

Use this method on a fresh OS installation. Ansible will install all packages, and finally hand off to Chezmoi to apply the dotfiles.

#### Prerequisites

- A clean OS installation.
- [Ansible](https://ansible.com)

#### Steps

Run the playbook remotely:

```sh
ansible-pull -U https://github.com/wiizzl/dotfiles.git -d /tmp/dotfiles scripts/playbook.yaml
```

> [!IMPORTANT]
> After the full installation completes, reboot your system to ensure everything loaded correctly. Make sure to enable the SSH agent in your Bitwarden app.
