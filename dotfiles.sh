#!/bin/sh

# Setting dotfiles
git clone https://github.com/Tamrin007/dotfiles ~/.dotfiles
cd ~/.dotfiles
./install
cd

# Install zplug
curl -sL zplug.sh/installer | zsh
echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells
chpass -s /usr/local/bin/zsh
