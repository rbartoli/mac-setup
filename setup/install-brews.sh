#!/usr/bin/env bash

# Check if everything is fine
brew doctor

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Add repository for newer or dev versions
brew tap homebrew/dupes

# Install other useful binaries
brew install ack
brew install apple-gcc42
brew install composer
brew install coreutils
brew install curl-ca-bundle # Required by vagrant-digitalocean
brew install findutils
brew install git
brew install grep
# brew install mitmproxy
brew install phplint
brew install sshuttle
brew install tree
brew install wget --enable-iri

# Install NTFS write support
brew install fuse4x
brew unlink fuse4x
brew install ntfs-3g
sudo mv /sbin/mount_ntfs /sbin/mount_ntfs.orig
sudo ln -s /usr/local/Cellar/ntfs-3g/2014.2.15/sbin/mount_ntfs /sbin/mount_ntfs
sudo cp -rf /usr/local/Cellar/fuse4x-kext/0.9.2/Library/Extensions/fuse4x.kext /Library/Extensions
sudo chmod +s /Library/Extensions/fuse4x.kext/Support/load_fuse4x

# Remove outdated versions from the cellar
brew cleanup
