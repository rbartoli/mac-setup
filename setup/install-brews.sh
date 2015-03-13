#!/usr/bin/env bash
# If /usr/include doesn't exist, then you need to do:
sudo ln -s /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include /usr/include

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Check if everything is fine
brew doctor

# Add additional repositories
taps=(
    homebrew/dupes # System duplicate formulae
    homebrew/php # PHP versions
    homebrew/boneyard # Archive of formulae removed from Homebrew
    caskroom/versions # Dev or alternate versions
)
brew tap ${taps[@]} 

# Update brew
brew update

# Install other useful binaries
binaries=(
    ack
    android-sdk
    aria2
    bash
    caskroom/cask/brew-cask
    coreutils
    dockutil
    findutils
    git
    grep
    imagemagick
    mackup
    mercurial
    mysql
    ngrok
    nvm
    sshrc
    tree
    vim
    watchman
    wget --with-iri
    z
)

brew install ${binaries[@]}

# Remove outdated versions from the cellar
brew cleanup

# Vim + plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
