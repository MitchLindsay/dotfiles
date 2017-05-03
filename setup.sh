#!/bin/bash

# Initial Output
printf "\n\n*** Configuring Development Environment ***\n\n"

# Path
printf "\n\n** Moving usr/local/bin before usr/bin in PATH **\n\n"
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

# Homebrew
printf "\n\n** Installing Homebrew **\n\n"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
printf "\n\n** Updating Homebrew **\n\n"
brew update
printf "\n\n** Running Homebrew Doctor **\n\n"
brew doctor
printf "\n\n** Adding Homebrew to PATH **\n\n"
export PATH="/usr/local/bin:$PATH"

# Cask
printf "\n\n** Installing Cask **\n\n"
brew install cask

# wget
printf "\n\n** Installing wget **\n\n"
brew install wget

# Rails
printf "\n\n** Installing Ruby on Rails with rvm **\n\n"
\curl -sSL https://get.rvm.io | bash -s stable --rails

# Node
printf "\n\n** Installing nvm **\n\n"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.4/install.sh | bash
printf "\n\n** Verifying nvm install **\n\n"
command -v nvm
printf "\n\n** Installing Node with nvm **\n\n"
nvm install node
printf "\n\n** Setting Node version with nvm **\n\n"
nvm use node

# VS Code
printf "\n\n** Installing VS Code **\n\n"
brew cask install visual-studio-code
printf "\n\n** Installing VS Code Extensions **\n\n"
code --install-extension Shan.code-settings-sync

# Spectacle
printf "\n\n** Installing Spectacle **\n\n"
brew cask install spectacle

# eslint
printf "\n\n** Installing eslint **\n\n"
npm i -g eslint
printf "\n\n** Installing eslint-plugin-react **\n\n"
npm i -g eslint-plugin-react
printf "\n\n** Copying eslint file to home directory **\n\n"
cp ./js/.eslintrc.js ~

# stylelint
printf "\n\n** Installing stylelint **\n\n"
npm i -g stylelint
printf "\n\n** Installing stylelint-config-standard **\n\n"
npm i -g stylelint-config-standard
printf "\n\n** Copying stylelint file to home directory **\n\n"
cp ./js/.stylelintrc.js ~

# Final Output
printf "\n\n*** Configuration Complete! ***\n\n"
