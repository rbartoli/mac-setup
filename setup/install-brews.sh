#!/usr/bin/env bash

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
    composer
    coreutils
    dockutil
    findutils
    git
    grep
    imagemagick
    mercurial
    mysql
    ngrok
    # ntfs-3g
    # osxfuse
    php56
    sshrc
    sshuttle
    tree
    vim
    wget --with-iri
    z
)

brew install ${binaries[@]}

# Remove outdated versions from the cellar
brew cleanup

# Install NTFS write support
# sudo mv /sbin/mount_ntfs /sbin/mount_ntfs.orig
# sudo ln -s /usr/local/sbin/mount_ntfs /sbin/mount_ntfs
# sudo /bin/cp -RfX /usr/local/opt/osxfuse/Library/Filesystems/osxfusefs.fs /Library/Filesystems/
# sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs

# Vim + plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
