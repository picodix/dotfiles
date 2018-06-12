function toLowerCase() {
    for f in *; do mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done
}

function link-dropbox() {
    # zsh / oh-my-zsh
    ln -fs ~/dropbox/Apps/zsh/.oh-my-zsh ~/.oh-my-zsh
    ln -fs ~/Dropbox/Apps/zsh/.zshrc ~/.zshrc

    # Hyper
    ln -fs ~/Dropbox/Apps/Hyper/.hyper.js ~/.hyper.js

    # Save capture One settings
    # ln -s ~/Dropbox/Apps/Capture\ One ~/Library/Application\ Support
}
