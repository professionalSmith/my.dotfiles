# Enable command auto-completion
zstyle ':completion:*:*:make:*' tag-order 'targets'
autoload -U compinit && compinit
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

# Enable direnv
eval "$(direnv hook zsh)"
