#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 6000; kill -0 "$$" || exit; done 2>/dev/null &
    
echo "Installing shell..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-shell.sh | sh

echo "Installing brew packages..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-brews.sh | sh

echo "Installing ruby gems..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-gems.sh | sh
    
echo "Installing node.js packages..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-npms.sh | sh

echo "Installing fonts..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-fonts.sh | sh
    
echo "Installing native apps..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-apps.sh | sh

echo "Tweaking OS X..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/configure-osx.sh | sh


echo "Installation completed. Now execute ./osx-for-hackers.sh in the terminal."
