#!/usr/bin/env bash

# Install native apps
apps=(
    alfred
    appcleaner
    asepsis
    caffeine
    dash
    diffmerge
    dropbox
    evernote
    firefox
    firefoxdeveloperedition
    flux
    fontprep
    google-chrome
    google-chrome-canary
    hipchat
    imagealpha
    imageoptim
    ios7-screensaver
    iterm2
    java6
    java7
    jumpcut
    mosh
    opera
    phantomjs
    skitch
    skype
    spectacle
    spotify
    sublime-text3
    teamviewer
    the-unarchiver
    vagrant
    # For reasons of stability using version v4.3.20 (Issues exist in later versions up to 4.3.24)
    virtualbox432096996
    vlc
    vmware-fusion
    
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

# Vagrant boxes
vagrant box add ubuntu/trusty64

# Vagrant plugins
vagrant plugin install vagrant-vbguest

# Sublime Text 3 configuration
wget https://sublime.wbond.net/Package%20Control.sublime-package -P ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/
