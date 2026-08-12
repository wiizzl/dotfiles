if status is-interactive
    mise activate fish | source
    starship init fish | source
    zoxide init fish --cmd cd | source
    fzf --fish | source

    if not set -q IN_HERDR; and type -q herdr
        set -gx IN_HERDR 1
        herdr
    end
end

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.bun/bin
fish_add_path $HOME/.spicetify