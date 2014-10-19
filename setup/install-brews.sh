#!/usr/bin/env bash

# Check if everything is fine
brew doctor

# Add repository for newer or dev versions
brew tap homebrew/dupes

# Install other useful binaries
brew install ack
brew install coreutils
brew install findutils
brew install git
brew install grep
brew install sshuttle
brew install tree
brew install wget --with-iri

# Install NTFS write support
# brew install osxfuse
# brew install ntfs-3g
# sudo mv /sbin/mount_ntfs /sbin/mount_ntfs.orig
# sudo ln -s /usr/local/sbin/mount_ntfs /sbin/mount_ntfs
# sudo /bin/cp -RfX /usr/local/opt/osxfuse/Library/Filesystems/osxfusefs.fs /Library/Filesystems/
# sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs

# Remove outdated versions from the cellar
brew cleanup
