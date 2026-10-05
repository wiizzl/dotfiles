if status is-login
  if test (tty) = "/dev/tty1"
    if uwsm check may-start
      exec uwsm start hyprland.desktop
    end
  end
end

if status is-interactive
  mise activate fish | source
  starship init fish | source
  zoxide init fish --cmd cd | source
  fzf --fish | source
end

fish_add_path -g $HOME/.local/bin
fish_add_path -g $HOME/.bun/bin
