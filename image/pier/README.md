My Hyprland workstation, built on [Universal Blue](https://universal-blue.org) `base-main` and paired with the [dotfiles](../../dotfiles).

## After installation

1. At the login screen, switch to a console with `Ctrl+Alt+F2`, log in and apply the dotfiles:

   ```sh
   chezmoi init wiizzl/atomic --apply
   ```

2. Reboot, then log in from the login screen.

## NVIDIA

Switch to the `pier-nvidia` tag (see the [main README](../../README.md#installation)). With Secure Boot enabled, enroll the driver signing key once, then reboot and confirm the enrollment with the password `universalblue`:

```sh
ujust enroll-secure-boot-key
```
