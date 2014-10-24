#!/usr/bin/env bash

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Check if everything is fine
brew doctor

# Add additional repositories repository for newer or dev versions and bundle
brew tap homebrew/dupes
brew tap homebrew/boneyard

# Update brew
brew update

# Install other useful binaries
binaries=(
    ack
    bash
    coreutils
    findutils
    git
    grep
    ntfs-3g
    osxfuse
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
sudo mv /sbin/mount_ntfs /sbin/mount_ntfs.orig
sudo ln -s /usr/local/sbin/mount_ntfs /sbin/mount_ntfs
sudo /bin/cp -RfX /usr/local/opt/osxfuse/Library/Filesystems/osxfusefs.fs /Library/Filesystems/
sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs

# Vim + plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
