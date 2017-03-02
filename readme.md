Dotfiles
========

Simple dotfiles for my ZSH prompt outrageously inspired by [this project](https://github.com/ayamflow/dotfiles)

## Installation
It will rename your current .zshrc to .zshrc.bak, just in case.

```
cd ~
git clone https://github.com/picodix/dotfiles
mv ~/dotfiles ~/.dotfiles
chmod +x .dotfiles/aka.sh
cd .dotfiles
./aka.sh install

```

## Uninstall
It will remove the current .zshrc (supposedly a symlink), and if found, rename your existing .zshrc.bak to .zshrc.

```
./aka.sh uninstall

```
