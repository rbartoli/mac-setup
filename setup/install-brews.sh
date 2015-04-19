#!/usr/bin/env bash
# If /usr/include doesn't exist, then you need to do:
if [ ! -d /usr/include ];
then
    sudo ln -s /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include /usr/include
fi

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
    aria2
    bash
    caskroom/cask/brew-cask
    coreutils
    dockutil
    findutils
    git
    grep
    imagemagick
    jq
    mackup
    mercurial
    mysql
    ngrok
    nvm
    sshrc
    tree
    vim
    wget --with-iri
    z
)

brew install ${brews[@]}

# Remove outdated versions from the cellar
brew cleanup
