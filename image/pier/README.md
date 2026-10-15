My Hyprland workstation, built on [Universal Blue](https://universal-blue.org) `base-main` and paired with the [dotfiles](../../dotfiles).

## Installation

1. Install any [Fedora Atomic](https://fedoraproject.org/atomic-desktops) desktop, then rebase onto the image and reboot:

   ```sh
   sudo bootc switch ghcr.io/wiizzl/atomic:pier
   systemctl reboot
   ```

2. At the login screen, switch to a console with `Ctrl+Alt+F2`, log in and apply the dotfiles:

   ```sh
   chezmoi init wiizzl/atomic --apply
   ```

3. Reboot, then log in from the login screen.

## NVIDIA

Use the `-nvidia` tag instead. With Secure Boot enabled, enroll the driver signing key once, then reboot and confirm the enrollment with the password `universalblue`:

```sh
ujust enroll-secure-boot-key
```
