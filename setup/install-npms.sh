#!/usr/bin/env bash

# Install latest version of NVM
export NVM_DIR=$HOME/.nvm
mkdir $NVM_DIR
source $(brew --prefix nvm)/nvm.sh

# Install latest version of Node.js
nvm install 0.10
nvm alias default 0.10
nvm use 0.10

npms=(
    # Front-end dependencies management
    bower
    
    # JavaScript task runners
    grunt-cli gulp
    
    # JavaScript scaffolding tools
    yo 
    
    # JavaScript development tools
    browserify 
    fixmyjs 
    jscs 
    jsfmt 
    jshint 
    jsinspect 
    pageres
    
    # CSS development tools
    csscomb csslint
    
    # Node development tools
    node-inspector nodemon
    
    # Ember development tools
    npm install -g ember-cli
    
    # General development tools
    http-server git-stats npm-check-updates
)
npm install -g ${npms[@]} 
