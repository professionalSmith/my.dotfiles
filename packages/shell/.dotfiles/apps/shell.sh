# Independent Aliases
alias cat="bat --style=plain --paging=never --style=numbers --theme ansi"
alias cls="printf '\ec\e[3J'"
alias dotfiles="code ~/my.dotfiles"
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox,.idea}"
alias ls="eza -l --header --git --icons"
alias lsa="ls -Ap"
alias reload="exec $SHELL"
alias vars="env | sort"

search() {
    local directory="${2:-.}"
    grep -n -R $1 "$directory"
}

dailytrash() {
    folder_current="$(pwd)"
    folder_date="$(date +'%Y-%b-%d-%H-%M')"
    folder="$folder_current/$folder_date"
    destination="$HOME/.trash$folder"
    mkdir -p $destination
    echo "Trashing files to: $destination"
    mv "$@" $destination
}
