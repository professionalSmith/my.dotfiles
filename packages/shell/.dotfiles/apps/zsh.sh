zstyle ':completion:*:*:make:*' tag-order 'targets'
autoload -U compinit && compinit

# Enable direnv
eval "$(direnv hook zsh)"
