abbr -a cat bat
abbr -a ls "eza -l --icons --group-directories-first --git"
abbr -a l "eza --icons -a --group-directories-first -1"
abbr -a ll "eza --icons -a --group-directories-first -1 --no-user --long"
abbr -a tree "eza --icons --tree --group-directories-first"

abbr -a --position anywhere -- --help '--help | bat -plhelp'
abbr -a --position anywhere -- -h '-h | bat -plhelp'