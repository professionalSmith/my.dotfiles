alias git-ignored="micro $HOME/.gitignore"

function git-ignores() {
    curl -sL "https://www.toptal.com/developers/gitignore/api/$@"
}
