# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="hyperzsh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.nvm/nvm.sh

# exports
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.yarn/bin
export EDITOR='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron -nw'

# Put brew cask apps in the root Apps dir
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#start custom file
source ~/.dotfiles/config.zsh
