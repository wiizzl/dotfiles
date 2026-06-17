if status is-login
    if test (tty) = /dev/tty1
        exec sway
    end
end

if status is-interactive
    mise activate fish | source
    starship init fish | source
    zoxide init fish --cmd cd | source
    fzf --fish | source
end

fish_add_path $HOME/.spicetify
fish_add_path $HOME/.local/bin