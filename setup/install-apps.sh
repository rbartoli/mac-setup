#!/usr/bin/env bash

# Install native apps
apps=(
    alfred
    appcleaner
    caffeine
    cyberduck
    dash
    diffmerge
    doxie
    dropbox
    evernote
    firefox
    firefoxdeveloperedition
    flux
    fontprep
    google-chrome
    google-drive
    hipchat
    imagealpha
    imageoptim
    ios7-screensaver
    iterm2
    java
    java6
    java7
    jumpcut
    mongodb
    mosh
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
    transmission
    vagrant
    virtualbox
    vlc
    vmware-fusion
    webstorm
    
    # Quicklook extensions
    betterzipql
    qlmarkdown
    qlstephen
    quicklook-csv
    quicklook-json
)

brew cask install --appdir=/Applications ${apps[@]} 2> /dev/null

# Remove outdated versions from the cellar
brew cask cleanup
