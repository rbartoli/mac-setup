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
    dropbox
    evernote
    firefoxdeveloperedition
    flux
    fontprep
    freemind
    google-chrome
    google-drive
    imagealpha
    imageoptim
    ios7-screensaver
    iterm2
    jumpcut
    limechat
    mamp
    mongodb
    mosh
    mysqlworkbench
    nosleep
    paragon-ntfs
    robomongo
    sequel-pro
    skype
    spectacle
    spotify
    sublime-text3
    teamviewer
    the-unarchiver
    torbrowser
    transmission
    tunnelbear
    vagrant
    virtualbox
    vlc
    vmware-fusion
    betterzipql
    qlcolorcode
    qlmarkdown
    qlstephen
    quicklook-csv
    quicklook-json
)

brew cask install --appdir=/Applications ${apps[@]}  2> /dev/null

# Enable casks in Alfred
brew cask alfred link

# Remove outdated versions from the cellar
brew cask cleanup

# Vagrant boxes
vagrant box add hashicorp/precise64
vagrant box add ubuntu/trusty64

# Vagrant plugins
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-digitalocean

# Sublime Text 3 configuration
wget https://sublime.wbond.net/Package%20Control.sublime-package -P ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/
