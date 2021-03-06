#!/usr/bin/env zsh

if [[ "$1" == "install" ]]; then
    # Install
    # Check if .zshrc already exists, and if so, rename it
    if [ -f "~/.zshrc" ]; then
       mv ~/.zshrc ~/.zshrc.bak
    fi

    # install brew, brew cask, trash
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install caskroom/cask/brew-cask
    brew install trash git node wget exa

    # install quicklook plugins
    brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

    # Install some good stuff (https://caskroom.github.io/search)
    brew cask install visual-studio-code alfred slack hyper google-chrome chromium firefox spectacle spotify fontprep dropbox unrarx

    # install oh-my-zsh
    curl -L http://install.ohmyz.sh | sh
    # install oh-my-zsh syntax highlight
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/zsh-syntax-highlighting
    # install z
    git clone https://github.com/rupa/z /usr/local/bin/z/

    ln -s ~/.dotfiles/hyperzsh.zsh-theme ~/.oh-my-zsh/themes/hyperzsh.zsh-theme
    ln -s ~/.dotfiles/.zshrc ~/.zshrc

    # setup some git config
    git config --global user.name "Peter Demulsant"
    git config --global user.email po.demulsant@gmail.com
    git config --global push.default current
    git config --global credential.helper osxkeychain
    git config --global color.ui auto
    git config --global mergetool.keepbackup false
    git config --global merge.tool opendiff
    git config --global core.filemode false

    source ~/.zshrc
    echo "Dotfiles installed."
    echo "----------------------------------"
    echo "\n"
    echo "Also consider download"
    echo "AppZapper: https://www.appzapper.com/"
    echo "Dash: https://kapeli.com/dash"
    echo "ImageOptim: https://imageoptim.com/mac"
    echo "Magnet: http://magnet.crowdcafe.com/"
    echo "Paw: https://paw.cloud/"
    echo "Rocket: http://matthewpalmer.net/rocket/"
    echo "----------------------------------"

    elif [[ "$1" == "uninstall" ]]; then
        # Uninstall
        rm ~/.oh-my-zsh/themes/hyperzsh.zsh-theme
        rm ~/.zshrc
        # Check if .zshrc.bak exists, and if so, rename it
        if [ -f "~/.zshrc.bak" ]; then
            mv ~/.zshrc.bak ~/.zshrc
        fi
        echo "Dotfiles uninstalled."
else
    echo "[Aka] No parameter supplied -- try with 'install' or 'uninstall'."
    exit
fi
