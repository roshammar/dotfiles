#!/usr/bin/env bash

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
fi

brew update
brew upgrade

brew tap homebrew/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap burntsushi/ripgrep https://github.com/BurntSushi/ripgrep.git

# Apps
brew install bash
brew install bash-completion2
brew install binutils
brew install burntsushi/ripgrep/ripgrep-bin
brew install coreutils
brew install diffutils
# brew install docker  # TODO: check if it is enough with cask Docker below
# brew install docker-compose
brew install elm
brew install exercism
brew install exiftool
brew install ffmpeg
brew install findutils
brew install fish
brew install fswatch
brew install git
brew install git-lfs
brew install gnu-getopt
brew install gnu-sed
brew install grep
brew install gs
brew install helm
brew install htop-osx
brew install imagemagick
brew install kubernetes-cli
brew install lua
brew install lynx
brew install mas
brew install moreutils
brew install mupdf-tools
brew install nano
brew install ncdu
brew install nim
brew install node
brew install openblas
brew install openssh
brew install p7zip
brew install pigz
brew install ponyc
brew install pv
brew install pypy3
brew install python
brew install qpdf
brew install rename
brew install rust
brew install s3cmd
brew install sops
brew install sqlite
brew install ssh-copy-id
brew install svtplay-dl
brew install tidy-html5
brew install tmux
brew install tree
brew install vbindiff
brew install vim
brew install watch
brew install webkit2png
brew install wget
brew install xz
brew install youtube-dl
brew install zopfli


# Python package dependencies
# for pip install pgmagick
brew install boost-python3
brew install graphicsmagick


# Casks
brew cask install adobe-creative-cloud
brew cask install alfred2
brew cask install android-file-transfer
brew cask install backblaze
brew cask install sublime-text
brew cask install docker
brew cask install firefox
brew cask install garmin-express
brew cask install google-chrome
brew cask install google-cloud-sdk
brew cask install hammerspoon
brew cask install imagealpha
brew cask install imageoptim
brew cask install iterm2
brew cask install osxfuse
brew cask install protonvpn
brew cask install silverlight
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install the-unarchiver
brew cask install transmission
brew cask install vlc

open '/usr/local/Caskroom/adobe-creative-cloud/latest/Creative Cloud Installer.app'
open '/usr/local/Caskroom/backblaze/latest/Backblaze Installer.app'

git lfs install
helm plugin install https://github.com/futuresimple/helm-secrets


# Quicklooks
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install webpquicklook
brew cask install suspicious-package


# Fonts
brew cask install 'font-source-code-pro'
brew cask install 'font-fira-sans'


# Cleanup
brew cleanup
chmod go-w /usr/local/share
