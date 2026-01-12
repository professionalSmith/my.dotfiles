# Enable command auto-completion
zstyle ':completion:*:*:make:*' tag-order 'targets'
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi
autoload -Uz compinit && compinit

# Enable direnv
eval "$(direnv hook zsh)"
