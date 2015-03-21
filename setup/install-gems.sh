#!/usr/bin/env bash

brew install rbenv ruby-build

# Install Ruby 2.2.0 and set it as the default version
rbenv install 2.2.0
rbenv global 2.2.0

# Update installed gems
sudo gem update --system

gems=(
    # SASS development tools
    sass 
    compass 
    scss-lint
)

sudo gem install ${gems[@]} 
