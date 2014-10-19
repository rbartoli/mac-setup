#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 6000; kill -0 "$$" || exit; done 2>/dev/null &

echo 'Enter new hostname of the machine (e.g. macbook-pro)'
    read hostname
    echo "Setting new hostname to $hostname..."
    sudo scutil --set HostName "$hostname"
    compname=$(sudo scutil --get HostName | tr '-' '.')
    echo "Setting computer name to $compname"
    sudo scutil --set ComputerName "$compname"
    sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$compname"

echo "Installing dotfiles..."
    curl -fsSL https://raw.github.com/rbartoli/dotfiles/master/setup/install.sh | sh

echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    
echo "Installing ruby gems..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-gems.sh | sh

echo "Installing brew packages..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-brews.sh | sh
    
echo "Installing node.js packages..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-npms.sh | sh

echo "Installing native apps..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-apps.sh | sh

# echo "Tweaking OS X..."
    # curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/configure-osx.sh | sh
