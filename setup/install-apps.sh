#!/usr/bin/env bash

# Install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
    brew cask install --appdir=/Applications "${@}" 2> /dev/null
}

# Install native apps
installcask alfred
installcask app-cleaner
installcask bittorrent-sync
installcask dash
installcask caffeine
installcask cyberduck
installcask dash
installcask diffmerge
installcask dropbox
installcask evernote
installcask firefox
installcask fontprep
installcask freemind
installcask google-chrome
installcask imagealpha
installcask imageoptim
installcask iterm2
installcask launchrocket
installcask mamp
installcask mosh
installcask mysql-workbench
installcask nosleep
installcask robomongo
installcask sequel-pro
installcask spectacle
installcask spotify
installcask skype
installcask sublime-text
installcask teamviewer
installcask the-unarchiver
installcask tor-browser
installcask totalspaces
installcask transmission
installcask vagrant
installcask virtualbox
installcask vlc

# QuickLook plugins
installcask betterzipql
installcask qlcolorcode
installcask qlmarkdown
installcask qlstephen
installcask quicklook-csv
installcask quicklook-json

# Enable casks in Alfred
brew cask alfred link

# Remove outdated versions from the cellar
brew cleanup
