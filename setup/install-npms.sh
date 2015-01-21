#!/usr/bin/env bash

export NVM_DIR=$HOME/.nvm
mkdir $NVM_DIR
source $(brew --prefix nvm)/nvm.sh

nvm install 0.10
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
npm install -g yo generator-webapp

# Js development tools
npm install -g csslint fixmyjs jsfmt jshint jsinspect pageres  

# Node development tools
npm install -g nodemon node-inspector svgo

# Ember development tools
npm install -g ember-cli

