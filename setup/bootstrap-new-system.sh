#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 600; kill -0 "$$" || exit; done 2>/dev/null &

# echo 'Enter new hostname of the machine (e.g. macbook-paulmillr)'
#     read hostname
#     echo "Setting new hostname to $hostname..."
#     sudo scutil --set HostName "$hostname"
#     compname=$(sudo scutil --get HostName | tr '-' '.')
#     echo "Setting computer name to $compname"
#     sudo scutil --set ComputerName "$compname"
#     sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$compname"

# pub=$HOME/.ssh/id_rsa.pub
# echo 'Checking for SSH key, generating one if it does not exist...'
#     [[ -f $pub ]] || ssh-keygen -t rsa

# echo 'Copying public key to clipboard. Paste it into your Github account...'
#     [[ -f $pub ]] && cat $pub | pbcopy
#     open 'https://github.com/account/ssh'

echo "Calling setup/install.sh..."
    curl -fsSL https://raw.github.com/rbartoli/dotfiles/master/setup/install.sh | sh

echo "Installing Homebrew..."
    which -s brew
    if [[ $? != 0 ]]; then
        ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    fi

echo "Installing brew packages..."
    curl -fsSL https://raw.github.com/rbartoli/dotfiles/master/setup/install-brews.sh | sh

echo "Installing native apps..."
    curl -fsSL https://raw.github.com/rbartoli/dotfiles/master/setup/install-apps.sh | sh

echo "Installing node.js packages..."
    curl -fsSL https://raw.github.com/rbartoli/dotfiles/master/setup/install-npms.sh | sh

echo "Tweaking OS X..."
    curl -fsSL https://raw.github.com/rbartoli/dotfiles/master/setup/configure-osx.sh | sh
