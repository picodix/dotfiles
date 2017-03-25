function toLowerCase() {
    for f in *; do mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done
}

function link-dropbox() {
    ln -s ~/Dropbox/Apps/Hyper/.hyper.js ~/.hyper.js
    ln -s ~/Dropbox/Apps/Atom ~/.atom
    ln -s ~/Dropbox/Apps/Code/app ~/Library/Application\ Support/Code
    ln -s ~/Dropbox/Apps/Code/extensions/.vscode ~/.vscode
    
    #save capture one settings
    #ln -s ~/Dropbox/Apps/Capture\ One ~/Library/Application\ Support
}
