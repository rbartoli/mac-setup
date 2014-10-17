#!/usr/bin/env bash

brew install rbenv ruby-build

# Install Ruby 2.1.3 and set it as the default version
rbenv install 2.1.3
rbenv global 2.1.3

# Update installed gems
sudo gem update --system
