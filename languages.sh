#!/bin/sh

# Install *envs
git clone https://github.com/riywo/anyenv ~/.anyenv
source .zshrc
anyenv install rbenv
anyenv install pyenv
anyenv install phpenv
anyenv install ndenv
anyenv install goenv
source .zshrc

# Versions
rb_ver="2.3.1"
py_ver="3.5.2"
php_ver="7.0.11"
nd_ver="6.6.0"
go_ver="1.7"

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
goenv install ${go_ver}
goenv global ${go_ver}
goenv rehash
source .zshrc
