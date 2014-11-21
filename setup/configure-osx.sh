#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 6000; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Add custom applications to dock                                             #
###############################################################################
dockutil --add "/Applications/Mission Control.app"
dockutil --add "/Applications/Time Machine.app"
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/Google Chrome.app"
dockutil --add "/Applications/FirefoxDeveloperEdition.app"
dockutil --add "/Applications/Safari.app"
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/iTerm.app"
dockutil --add "/Applications/Sublime Text 3.app"
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/Robomongo.app"
dockutil --add "/Applications/Sequel Pro.app"
dockutil --add "/Applications/MySQLWorkbench.app"
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/FreeMind.app"
dockutil --add "/Applications/Skype.app"
dockutil --add "/Applications/Evernote.app"
dockutil --add "/Applications/Spotify.app"
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
dockutil --add "/Applications/Cyberduck.app"
dockutil --add '/Applications' --replacing 'Downloads' --view list --display folder
dockutil --add '~/Downloads' --view list --display folder
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

###############################################################################
# OSX for hackers                                                             #
###############################################################################
curl -fsSL https://gist.githubusercontent.com/brandonb927/3195465/raw/84e047cbedd18343f6e318cafb62b1e2b0496de6/osx-for-hackers.sh | sh

###############################################################################
# This script disables sharing of Spotlight searches with Apple               #
###############################################################################
curl -fsSL https://fix-macosx.com/fix-macosx.py && /usr/bin/python fix-macosx.py

###############################################################################
# Hide home folder directories                                                #
###############################################################################
chflags hidden ~/Documents
chflags hidden ~/Movies
chflags hidden ~/Music
chflags hidden ~/Pictures
chflags hidden ~/Public
