#!/usr/bin/env bash

DevToolsSecurity -enable

# Enable text selection in QuickLook window
defaults write com.apple.finder QLEnableTextSelection

###############################################################################
# Add custom applications to dock                                             
###############################################################################

defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/Google Chrome.app"
dockutil --add "/Applications/Safari.app"
dockutil --add "/Applications/Firefox.app"
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/iTerm.app"
dockutil --add "/Applications/Sublime Text.app"
dockutil --add "/Applications/WebStorm.app"
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/Robomongo.app"
dockutil --add "/Applications/HipChat.app"
dockutil --add "/Applications/Skype.app"
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
