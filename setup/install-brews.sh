#!/usr/bin/env bash

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Check if everything is fine
brew doctor

# Update brew
brew update

# Add repository for newer or dev versions
brew tap homebrew/dupes

# Install other useful binaries
binaries=(
    ack
    bash
    coreutils
    findutils
    git
    grep
    sshuttle
    tree
    wget --with-iri
)

brew install ${binaries[@]}

# Install NTFS write support
brew install osxfuse
brew install ntfs-3g
sudo mv /sbin/mount_ntfs /sbin/mount_ntfs.orig
sudo ln -s /usr/local/sbin/mount_ntfs /sbin/mount_ntfs
sudo /bin/cp -RfX /usr/local/opt/osxfuse/Library/Filesystems/osxfusefs.fs /Library/Filesystems/
sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs

# Remove outdated versions from the cellar
brew cleanup
