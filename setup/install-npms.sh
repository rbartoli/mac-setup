#!/usr/bin/env bash

# Install latest version of NVM
export NVM_DIR=$HOME/.nvm
mkdir $NVM_DIR
source $(brew --prefix nvm)/nvm.sh

# Install latest version of Node.js
nvm install stable
nvm use stable
nvm alias default stable

npms=(
    bower
    bower-check-updates
    browser-sync
    cordova
    ember-cli
    eslint
    grunt-cli 
    gulp
    http-server
    ios-sim
    jscs
    node-debug
    node-inspector 
    nodemon
    npm
    npm-check-updates
    phonegap
    speed-test
    yo
)

npm install -g ${npms[@]} 
