#!/usr/bin/env bash

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew doctor
fi

brew update
brew upgrade

# Apps
brew install autossh
brew install bash
brew install bat
brew install binutils
brew install coreutils
brew install curl
brew install diffutils
brew install exiftool
brew install ffmpeg
brew install findutils
brew install fish
brew install fswatch
brew install fzf
brew install gh
brew install git
brew install git-lfs
brew install gnu-getopt
brew install gnu-sed
brew install grep
brew install gs
brew install helm
brew install htop-osx
brew install imagemagick
brew install just
brew install kaggle
brew install kubernetes-cli
brew install mas
brew install moreutils
brew install mupdf-tools
brew install nano
brew install ncdu
brew install node
brew install openssh
brew install p7zip
brew install pigz
brew install pv
brew install pyenv
brew install pyenv-virtualenv
brew install qpdf
brew install rename
brew install ripgrep
brew install sops
brew install sox
brew install starship
brew install tmux
brew install tree
brew install uv
brew install vbindiff
brew install watch
brew install wget
brew install xz
brew install zoxide


# For building Python with pyenv
brew install openssl readline sqlite3 xz zlib


# Casks
brew install android-file-transfer
brew install arc
brew install bluesnooze
brew install cyberduck
brew install --cask docker
brew install firefox
brew install google-chrome
brew install google-cloud-sdk
brew install hammerspoon
brew install imageoptim
brew install iterm2
brew install kitty
brew install microsoft-teams
brew install openvpn-connect
brew install orion
brew install raycast
brew install slack
brew install spotify
brew install the-unarchiver
brew install transmission
brew install tunnelblick
brew install vlc
brew install zed


git lfs install
helm plugin install https://github.com/jkroepke/helm-secrets


# Fonts
brew install --cask font-fira-code-nerd-font
brew install --cask font-fira-sans
brew install --cask font-source-code-pro


# Cleanup
brew cleanup
chmod go-w /usr/local/share
