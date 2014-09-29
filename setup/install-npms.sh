# NVM
git clone https://github.com/creationix/nvm.git ~/.nvm
nvm install 0.10
nvm use 0.10
nvm alias default 0.10

# sudo chown -R $USER /usr/local
# sudo chown -R `whoami` ~/.npm

# Tell npm to shut the hell up
npm config set loglevel error
# And to save by default
npm config set save true

# Yeoman and generators
npm install -g yo
npm install -g generator-webapp

# Node development tools
npm install -g nodemon
npm install -g node-inspector
npm install -g svgo

# Linter dependencies
npm install -g jshint 
npm install -g csslint
