function toLowerCase() {
    for f in *; do mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done
}

function link-dropbox() {
    # zsh / oh-my-zsh
    ln -fs ~/dropbox/Apps/zsh/.oh-my-zsh ~/.oh-my-zsh
    ln -fs ~/Dropbox/Apps/zsh/.zshrc ~/.zshrc

    # Hyper
    ln -fs ~/Dropbox/Apps/Hyper/.hyper.js ~/.hyper.js

    # Visual Studio Code
    ln -s ~/Dropbox/Apps/Code/app ~/Library/Application\ Support/Code
    ln -s ~/Dropbox/Apps/Code/extensions/.vscode ~/

	# Spectacle
	ln -s ~/Dropbox/Apps/Spectacle/Shortcuts.json ~/Library/Application\ Support/Spectacle/Shortcuts.json

    # Save capture One settings
    # ln -s ~/Dropbox/Apps/Capture\ One ~/Library/Application\ Support
}
