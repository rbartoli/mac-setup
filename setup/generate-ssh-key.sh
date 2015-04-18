#!/usr/bin/env bash

#Generate SSH key and prompt add to Github

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