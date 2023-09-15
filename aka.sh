#!/usr/bin/env zsh

if [[ "$1" == "install" ]]; then
    # Install
    # Check if .zshrc already exists, and if so, rename it
    if [ -f "~/.zshrc" ]; then
       mv ~/.zshrc ~/.zshrc.bak
    fi

    # install brew, trash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install trash wget

    # install quicklook plugins
    brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package

    # Install some good stuff (https://formulae.brew.sh/formula/)
    brew install visual-studio-code alfred slack hyper google-chrome chromium firefox unrarx

    # install oh-my-zsh
    curl -L http://install.ohmyz.sh | sh
    # install oh-my-zsh syntax auto suggestions
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
    # install oh-my-zsh yarn autocompletions
    git clone https://github.com/g-plane/zsh-yarn-autocompletions ~/.oh-my-zsh/plugins/zsh-autosuggestions
     # install oh-my-zsh syntax highlight
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/zsh-syntax-highlighting

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
    echo "AppCleaner: https://freemacsoft.net/appcleaner/"
    echo "ImageOptim: https://imageoptim.com/mac"
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
