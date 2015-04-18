#!/usr/bin/env bash

echo "Installing shell..."
    curl -fsSL https://raw.github.com/twig2let/setup/master/setup/install-shell.sh | sh

echo "Installing brew packages..."
    curl -fsSL https://raw.github.com/twig2let/setup/master/setup/install-brews.sh | sh

echo "Installing ruby gems..."
    curl -fsSL https://raw.github.com/twig2let/setup/master/setup/install-gems.sh | sh
    
echo "Installing node.js packages..."
    curl -fsSL https://raw.github.com/twig2let/setup/master/setup/install-npms.sh | sh

echo "Installing fonts..."
    curl -fsSL https://raw.github.com/twig2let/setup/master/setup/install-fonts.sh | sh
    
echo "Installing native apps..."
    curl -fsSL https://raw.github.com/twig2let/setup/master/setup/install-apps.sh | sh

echo "Tweaking OS X..."
    curl -fsSL https://raw.github.com/twig2let/setup/master/setup/configure-osx.sh | sh

echo "Generate SSH key for github..."
	curl -fsSL https://raw.github.com/twig2let/setup/master/setup/generate-ssh-key.sh | sh

echo "Installation completed. Now execute ./osx-for-hackers.sh in the terminal."
