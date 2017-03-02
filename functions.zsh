function toLowerCase() {
    for f in *; do mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done
}

function link-dropbox() {
    ln -s ~/Dropbox/Apps/Hyper/.hyper.js ~/.hyper.js
    ln -s ~/Dropbox/Apps/Atom ~/.atom
}
