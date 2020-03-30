#!/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# update repos
brew update

# brew
brew install exa
brew install fd
brew install kakoune
brew install pandoc
brew install wifi-password

# cask
brew cask install rectangle
brew cask install maxtex
