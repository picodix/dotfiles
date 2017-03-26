function toLowerCase() {
    for f in *; do mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done
}

function link-dropbox() {
    # Hyper
    ln -s ~/Dropbox/Apps/Hyper/.hyper.js ~/.hyper.js

    # Atom
    ln -s ~/Dropbox/Apps/Atom ~/.atom

    # Visual Studio Code
    ln -s ~/Dropbox/Apps/Code/app ~/Library/Application\ Support/Code
    ln -s ~/Dropbox/Apps/Code/extensions/.vscode ~/

    # Save capture One settings
    # ln -s ~/Dropbox/Apps/Capture\ One ~/Library/Application\ Support
}