alias ping="ping -c 5"
alias cat="bat"

alias ls="eza -lh --group-directories-first --icons=auto"
alias lsa="ls -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias lta="lt -a"
alias tree="eza --tree --group-directories-first"

alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias eff="$EDITOR '$(ff)'"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias --help="--help | bat -plhelp"
alias -h="-h | bat -plhelp"
