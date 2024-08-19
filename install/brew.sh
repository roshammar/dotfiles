#!/usr/bin/env bash

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew doctor
fi

brew update
brew upgrade

brew bundle install --file=./Brewfile


# Cleanup
brew cleanup
chmod go-w /usr/local/share
