#!/bin/bash
#
# Configure a new development environment.

# Draw ascii art
cat ./assets/ascii/dotfiles.txt

# Greeting
echo "Welcome to the dotfiles of Mitch Lindsay"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Confirm Homebrew installation
command -v brew

# Install Homebrew packages
brew install cask
brew install neofetch
brew install nvm
brew install starship

# Install Cask packages
brew install --cask iterm2
brew install --cask visual-studio-code

# Confirm nvm installation
command -v nvm

# Install Node
nvm install --lts
nvm use --lts

# Confirm Node installation
command -v node
command -v npm

# Copy .zshrc
cp src/cli/zsh/zshrc ~/.zshrc
source $HOME/.zshrc

# Configure iTerm
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | bash

# TODO: Import plist, profile, color scheme into iterm
# TODO: Configure VSCode
# TODO: Install other applications
