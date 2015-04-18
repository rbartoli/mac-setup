#!/usr/bin/env bash

# Install native apps
apps=(
    alfred
    appcleaner
    caffeine
    dash
    evernote
    firefox
    flux
    google-chrome
    google-chrome-canary
    ios7-screensaver
    iterm2
    java6
    java7
    jumpcut
    phantomjs
    skitch
    skype
    spectacle
    spotify
    sublime-text3
    the-unarchiver
    vagrant
    virtualbox
    vlc
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

# Vagrant boxes
vagrant box add ubuntu/trusty64

# Vagrant plugins
vagrant plugin install vagrant-vbguest

# Sublime Text 3 configuration
wget https://sublime.wbond.net/Package%20Control.sublime-package -P ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/
