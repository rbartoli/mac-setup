#!/usr/bin/env bash

# Install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

# Install native apps
apps=(
    # alfred
    appcleaner
    asepsis
    caffeine
    cyberduck
    dash
    diffmerge
    dropbox
    evernote
    firefox
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
    # QuickLook plugins
    betterzipql
    qlcolorcode
    qlmarkdown
    qlstephen
    quicklook-csv
    quicklook-json
)


# Vagrant plugins
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-digitalocean

# Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Enable casks in Alfred
# brew cask alfred link

# This script modifies the current user's Spotlight preferences, disabling sharing of Spotlight searches with Apple
curl -O https://fix-macosx.com/fix-macosx.py && /usr/bin/python fix-macosx.py

# Remove outdated versions from the cellar
brew cleanup
