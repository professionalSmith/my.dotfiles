# Independent Aliases
alias cat="bat --style=plain --paging=never --style=numbers --theme ansi"
alias cls="printf '\ec\e[3J'"
alias dotfiles="code ~/my.dotfiles"
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox,.idea}"
alias ls="eza  --long --bytes --no-time --icons --header --git --group-directories-first --smart-group --no-user"
alias lsa="ls -Ap"
alias playbooks="code ~/my.playbooks"
alias reload="exec $SHELL"

# Functions
search() {
    local directory="${2:-.}"
    grep -n -R $1 "$directory"
}

vars() {
    env | sort | awk -F= '
    {
    keys[NR] = $1
    vals[NR] = $2
    if (length($1) > max) max = length($1)
    }
    END {
    width = max + 2
    for (i = 1; i <= NR; i++) {
        printf "%-*s=\"%s\"\n", width, keys[i], vals[i]
    }
    }' | bat -l bash --style=plain --paging=never --style=numbers --theme ansi

    ## Favored themes:
    # ansi
    # Visual Studio Dark+
    # Catppuccin Latte
    # Catppuccin Frappe
    # Catppuccin Mocha
}

# Dependent Aliases
alias env=vars
