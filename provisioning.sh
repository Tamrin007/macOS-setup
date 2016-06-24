#!/bin/sh

# Versions
rb_ver="2.3.1"
py_ver="3.5.1"
php_ver="7.0.8"
nd_ver="6.2.2"
j_ver="1.8"
go_ver="1.6"

# Homebrew Install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Packages & Applications Install


# Setting dotfiles
git clone https://github.com/Tamrin007/dotfiles ~/.dotfiles
cd ~/.dotfiles
./install
cd

# Install zplug
curl -sL get.zplug.sh | zsh
echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells 
chpass -s /usr/local/bin/zsh
exec $SHELL -l

# Install *envs
git clone https://github.com/riywo/anyenv ~/.anyenv
exec $SHELL -l
anyenv install rbenv
anyenv install pyenv
anyenv install phpenv
anyenv install ndenv
anyenv install jenv
anyenv install goenv
exec $SHELL -l

# Install Languages
rbenv install ${rb_ver}
rbenv global ${rb_ver}
rbenv rehash
pyenv install ${py_ver}
pyenv global ${py_ver}
pyenv rehash
phpenv install ${php_ver}
phpenv global ${php_ver}
phpenv rehash
ndenv install ${nd_ver}
ndenv global ${nd_ver}
ndenv rehash
jenv install ${j_ver}
jenv global ${j_ver}
jenv rehash
goenv install ${go_ver}
goenv global ${go_ver}
goenv rehash
exec $SHELL -l
