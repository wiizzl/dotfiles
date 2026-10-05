set -g fish_greeting ""

set -gx MANPAGER "bat -plman"
set -gx STARSHIP_CONFIG "$HOME/.config/starship/config.toml"

set -gx EDITOR nano
if set -q WAYLAND_DISPLAY
  set -gx VISUAL "zed --wait"
end
