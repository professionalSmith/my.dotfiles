function source-stowed-packages {
    for file in $(ls -L "$HOME/.dotfiles/apps"); do
        if [[ -f "$HOME/.dotfiles/apps/$file" ]] && [[ "$file" != "apps.sh" ]]; then
            source "$HOME/.dotfiles/apps/$file"
        fi
    done
}

source-stowed-packages
