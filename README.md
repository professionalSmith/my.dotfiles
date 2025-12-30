# my.dotfiles for macOS

Unix like operating systems use dotfiles for application configuration management.</br>
These are my dotfiles. There are many like them, but these are mine -- managed with GNU Stow.</br>

## Installation

1. Backup existing profiles.

```bash
mv ~/.zshrc ~/.zshrc.bkup
mv ~/.bashrc ~/.bashrc.bkup
mv ~/.bash_profile ~/.bash_profile
mv ~/.profile ~/.profile.bkup
```

2. Install GNU Stow.

```bash
brew install stow
```

3. Clone my.dotfiles repository.

```bash
git clone git@github.com:professionalSmith/my.dotfiles.git
```

4. Stow stow & shell

```bash
cd ~/my.dotfiles/packages
stow --target ../.. stow
stow --target ../.. shell
exec zsh
```

5. Stow away

- Stow packages of interest as was done for the stow and shell packages.
- Rename existing files to file.bkup if Stow warns about conflicting files.


## Removing Packages

```bash
cd ~/my.dotfiles/packages
stow -D --target ../.. <package-name>
exec zsh
```
