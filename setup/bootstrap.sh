#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 6000; kill -0 "$$" || exit; done 2>/dev/null &

echo "Installing Shell..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-shell.sh | sh

echo "Installing Brew packages..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-brews.sh | sh

echo "Installing Ruby gems..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-gems.sh | sh
    
echo "Installing Node.js packages..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-npms.sh | sh

echo "Installing Fonts..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-fonts.sh | sh
    
echo "Installing Apps..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/install-apps.sh | sh

echo "Configuring OS X..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/configure-osx.sh | sh
    
echo "Configuring Sublime Text..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/configure-sublime-text.sh | sh

echo "Configuring Vagrant..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/configure-vagrant.sh | sh
    
echo "Configuring Vim..."
    curl -fsSL https://raw.github.com/rbartoli/setup/master/setup/configure-vim.sh | sh

echo "Installation completed. Now execute ./osx-for-hackers.sh in the terminal."
