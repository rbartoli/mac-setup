#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 6000; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Add custom applications to dock                                             
###############################################################################

defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/Google Chrome Canary.app"
dockutil --add "/Applications/FirefoxDeveloperEdition.app"
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/Google Chrome.app"
dockutil --add "/Applications/Firefox.app"
dockutil --add "/Applications/Safari.app"
dockutil --add "/Applications/Opera.app"
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/iTerm.app"
dockutil --add "/Applications/Sublime Text.app"
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/HipChat.app"
dockutil --add "/Applications/Evernote.app"
dockutil --add "/Applications/Spotify.app"
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add '/Applications' --replacing 'Downloads' --view list --display folder --sort name
dockutil --add '~/Downloads' --view list --display folder
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

###############################################################################
# Hide home folder directories                                                
###############################################################################

chflags hidden ~/Applications
chflags hidden ~/Documents
chflags hidden ~/Movies
chflags hidden ~/Music
chflags hidden ~/Pictures
chflags hidden ~/Public

###############################################################################
# OSX for hackers                                                             
###############################################################################

wget https://gist.githubusercontent.com/brandonb927/3195465/raw/84e047cbedd18343f6e318cafb62b1e2b0496de6/osx-for-hackers.sh
chmod +x osx-for-hackers.sh

###############################################################################
# Generate SSH Key - Github
###############################################################################

function pause(){
   read -p "$*"
}

echo "Generating SSH key here: $HOME/.ssh/"
ssh-keygen -t rsa -f $HOME/.ssh/$USER -q -N ''

echo "Adding SSH key to ssh-agent"
ssh-add $HOME/.ssh/$USER

echo "Copying public key to clipboard"
pbcopy < $HOME/.ssh/$USER.pub

echo "Add the SSH key to github"
open -g https://github.com/settings/ssh
pause 'Then press [Enter] key to continue...'
ssh -T git@github.com
