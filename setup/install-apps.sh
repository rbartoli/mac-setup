#!/usr/bin/env bash

# Install native apps
apps=(
    alfred
    appcleaner
    asepsis
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
    folx
    fontprep
    freemind
    google-chrome
    google-chrome-canary
    google-drive
    hipchat
    imagealpha
    imageoptim
    ios7-screensaver
    iterm2
    java6
    java7
    jumpcut
    limechat
    microsoft-office
    mongodb
    mosh
    mysqlworkbench
    opera
    # paragon-ntfs
    phantomjs
    robomongo
    sequel-pro
    skitch
    skype
    spectacle
    spotify
    sublime-text3
    teamspeak-client
    teamviewer
    the-unarchiver
    torbrowser
    transmission
    tunnelbear
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

brew cask install --appdir=/Applications ${apps[@]}  2> /dev/null

# Remove outdated versions from the cellar
brew cask cleanup

# Vagrant boxes
vagrant box add hashicorp/precise64
vagrant box add ubuntu/trusty64

# Vagrant plugins
vagrant plugin install vagrant-vbguest

# Sublime Text 3 configuration
wget https://sublime.wbond.net/Package%20Control.sublime-package -P ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/
