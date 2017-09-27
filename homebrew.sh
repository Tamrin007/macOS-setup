#!/bin/bash

set -eu

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install brew-file
brew install rcmdnk/file/brew-file

# Install listed packages
brew file install
