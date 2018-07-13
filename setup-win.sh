#!/bin/bash
printf "\n\n*** Configuring Windows Dev Environment ***\n\n"

printf "\n\n** Moving usr/local/bin before usr/bin in PATH **\n\n"
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

printf "\n\n** Updating Packages **\n\n"
sudo apt-get update
sudo apt-get upgrade

printf "\n\n** Installing Git **\n\n"
sudo apt-get update && sudo apt-get install git

printf "\n\n** Installing Zsh **\n\n"
sudo apt-get update && sudo apt-get install zsh

printf "\n\n** Installing Oh My Zsh **\n\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

printf "\n\n** Installing Zsh Plugins **\n\n"
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

printf "\n\n** Installing NVM **\n\n"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

printf "\n\n** Installing Node **\n\n"
nvm install stable

printf "\n\n** Installing Yarn **\n\n"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

printf "\n\n** Install VSTS CLI **\n\n"
curl -L https://aka.ms/install-vsts-cli | bash

printf "\n\n** Copying Config Files **\n\n"
cp ./config./bashrc ~/.bashrc
cp ./config./zshrc ~/.zshrc

printf "\n\n** Applying Config Files **\n\n"
source ~/.bashrc
source ~/.zshrc
