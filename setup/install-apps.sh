#!/usr/bin/env bash

# Install native apps
apps=(
    alfred
    appcleaner
    caffeine
    cyberduck
    cyberghost
    dash
    diffmerge
    doxie
    dropbox
    dropbox-encore
    electrum
    evernote
    firefox
    flux
    gas-mask
    google-chrome
    google-drive
    gpgtools
    hipchat
    imageoptim
    ios7-screensaver
    iterm2
    java
    jumpcut
    mongodb
    mosh
    ngrok
    rescuetime
    robomongo
    sequel-pro
    skitch
    skype
    spectacle
    spotify
    sublime-text3
    teamviewer
    the-unarchiver
    torbrowser
    totalspaces
    transmission
    vagrant
    virtualbox
    vlc
    vmware-fusion
    webstorm-bundled-jdk
    ynab
    
    # Quicklook extensions
    betterzipql
    qlcolorcode
    qlimagesize
    qlmarkdown
    qlstephen
    quicklook-json
)

brew cask install --appdir=/Applications ${apps[@]} 2> /dev/null

# Remove outdated versions from the cellar
brew cask cleanup
