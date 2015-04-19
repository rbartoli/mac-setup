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
    # Front-end dependencies management
    bower
    
    # JavaScript task runners
    grunt-cli 
    gulp
    
    # JavaScript scaffolding tools
    yo 
    
    # JavaScript development tools
    browserify 
    
    # JavaScript static code analysis
    fixmyjs 
    jscs 
    jsfmt 
    jshint 
    jsinspect 
    
    # CSS/SASS development tools
    csscomb 
    csslint
    node-sass
    
    # Node development tools
    node-inspector 
    nodemon
    
    # General development tools
    http-server 
    npm-check-updates
)

npm install -g ${npms[@]} 
