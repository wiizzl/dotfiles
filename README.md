# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi) and optionally provisioned via [Ansible](https://ansible.com).

Used to maintain a consistent setup across different environments:

- [Fedora Everything](https://fedoraproject.org/misc/#everything)
- [macOS](https://apple.com/os/macos)

## Installation

> [!WARNING]
> All this settings fits my personal preferences. Use at your own risk.

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

- [git](https://git-scm.com/install)
- [Ansible](https://docs.ansible.com/projects/ansible/latest/installation_guide/intro_installation.html)
- <details>
    <summary>A clean OS installation.</summary>
    <div>
      <img src=".github/assets/fedora.png" height="350" style="vertical-align: middle;">
      <br>
      <em>I recommend using the package selections seen in the above screenshot.</em>
    </div>
  </details>

#### Steps

Clone the repository and run the playbook:

> [!NOTE]
> You may need to install deps with `ansible-galaxy install -r requirements.yaml` depending on how you installed Ansible.

```sh
git clone https://github.com/wiizzl/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
ansible-playbook -K playbook.yaml
```

> [!IMPORTANT]
> After the full installation completes, reboot your system to ensure everything loaded correctly. Make sure to enable the SSH agent in your Bitwarden app.

## Testing

You can validate the Ansible provisioning locally without affecting your host machine.

```sh
docker compose up -d --build
docker exec -it -u docker_user fedora-test bash -c "cd ~/.dotfiles && ansible-playbook playbook.yaml"
docker compose down -v --remove-orphans
```
