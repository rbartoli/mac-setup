#!/usr/bin/env bash

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Check if everything is fine
brew doctor

# Add additional repositories
brew tap homebrew/dupes # System duplicate formulae
brew tap homebrew/boneyard # Archive of formulae removed from Homebrew
brew tap caskroom/versions # Dev or alternate versions

# Update brew
brew update

# Install other useful binaries
brews=(
    ack
    android-sdk
    aria2
    bash
    caskroom/cask/brew-cask
    coreutils
    dockutil
    findutils
    git
    git-extras
    git-flow
    grep
    imagemagick
    jq
    mackup
    mercurial
    mysql
    nvm
    sshrc
    the_silver_searcher
    tig
    tmux
    tree
    vim
    watchman
    wget --with-iri
    z
)

brew install ${brews[@]}

# Remove outdated versions from the cellar
brew cleanup
