if status is-interactive
  fish_config theme choose "Catppuccin Mocha"

  mise activate fish | source
  starship init fish | source
  zoxide init fish --cmd cd | source
  fzf --fish | source
end
