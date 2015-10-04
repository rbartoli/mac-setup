#!/usr/bin/env bash

# Add cask for fonts
brew tap caskroom/fonts

# Install fonts
wget -O Inconsolata-Powerline.otf https://raw.githubusercontent.com/rbartoli/setup/master/fonts/Inconsolata-Powerline.otf
mv Inconsolata-Powerline.otf ~/Library/Fonts
