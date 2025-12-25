# dotfiles

My dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

<a href="https://chezmoi.io"><img src="https://raw.githubusercontent.com/twpayne/chezmoi/refs/heads/master/assets/images/mono.png" width="150" style="margin-bottom:10px;" /></a>

Used to maintain my devices across different environments:

- Arch Linux (minimal install)
- macOS

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

> [!IMPORTANT]
> After installation, reboot your system to ensure all necessary services start.

## Arch specific steps

### Recommended installation

Below is a table of suggested settings for a minimal Arch Linux installation, tailored for use with these dotfiles. Adjust options as needed for your hardware and preferences.

| Setting                    | Value/Example        | Description                                                                 |
| -------------------------- | -------------------- | --------------------------------------------------------------------------- |
| Swap                       | `enabled`            | Enables swap space for better memory management, especially on low RAM      |
| Profile                    | `minimal`            | Minimal install; dotfiles already include Hyprland and essential tools      |
| Bootloader                 | `systemd-boot`       | Recommended for easier dual-boot setups                                     |
| Unified Kernel Image (UKI) | `enabled`            | Simplifies kernel updates and secure boot (see guide below)                 |
| Authentication             | _as you wish_        | Create a user with sudo privileges                                          |
| Additional packages        | `chezmoi`            | Required for managing dotfiles                                              |
| Bluetooth                  | _as you wish_        | Enable if your hardware supports Bluetooth                                  |
| Audio                      | `pipewire` or `none` | Pipewire is recommended; but dotfiles will install necessary audio packages |
| Network                    | `Copy ISO config`    | Use the network configuration from the installation ISO                     |
| Other options              | _as you wish_        | Customize other system settings to your needs                               |

### Secure boot

First, your secure boot needs to be turned off. Make sure to also remove any existing secure boot keys/variables.

Then, reboot and follow [this guide](https://wiki.archlinux.org/title/Unified_Extensible_Firmware_Interface/Secure_Boot#Assisted_process_with_sbctl).
