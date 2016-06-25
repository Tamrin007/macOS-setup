#!/bin/sh

# Homebrew Install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Packages & Applications Install
brew tap Homebrew/bundle
brew bundle
