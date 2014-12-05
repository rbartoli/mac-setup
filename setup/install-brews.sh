#!/usr/bin/env bash
# If /usr/include doesn't exist, then you need to do:
sudo ln -s /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include /usr/include

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Check if everything is fine
brew doctor

# Add additional repositories
brew tap homebrew/dupes # System duplicate formulae
brew tap homebrew/php # PHP versions
brew tap homebrew/boneyard # Archive of formulae removed from Homebrew
brew tap caskroom/versions # Dev or alternate versions
brew tap phinze/homebrew-cask # Homebrew-cask

# Update brew
brew update

# Install other useful binaries
binaries=(
    ack
    bash
    brew-cask
    coreutils
    dockutil
    findutils
    git
    grep
    imagemagick
    mercurial
    mysql
    ngrok
    sshrc
    sshuttle
    tree
    vim
    watchman
    wget --with-iri
    z
    php56
    composer
)

brew install ${binaries[@]}

# Remove outdated versions from the cellar
brew cleanup

# Vim + plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
