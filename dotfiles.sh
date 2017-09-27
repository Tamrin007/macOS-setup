#!/bin/bash

set -eu

# Set dotfiles
git clone https://github.com/Tamrin007/dotfiles ~/.dotfiles
cd ~/.dotfiles
./install
cd
