#!/usr/bin/env bash

# NVM
brew install nvm

source $(brew --prefix nvm)/nvm.sh
export NVM_DIR=~/.nvm

nvm install 0.10
nvm use 0.10
nvm alias default 0.10

# Tell npm to shut the hell up
npm config set loglevel error
# And to save by default
npm config set save true

# Bower
npm install -g bower

# Grunt
npm install -g grunt-cli

# Yeoman and generators
npm install -g yo
npm install -g generator-webapp

# Node development tools
npm install -g nodemon
npm install -g node-inspector
npm install -g svgo

# Ember development tools
npm install -g ember-cli

# Sublime Linter dependencies
npm install -g jshint 
npm install -g csslint
