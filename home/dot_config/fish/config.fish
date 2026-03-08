if status is-interactive
    mise activate fish | source
    starship init fish | source
    zoxide init fish --cmd cd | source
    fzf --fish | source
end