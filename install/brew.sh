#!/usr/bin/env bash

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew doctor
fi

brew update
brew upgrade

brew tap homebrew/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# Apps
brew install bash
brew install bash-completion2
brew install binutils
brew install coreutils
brew install diffutils
brew install docker-compose
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
brew install graphviz
brew install grep
brew install gs
brew install helm
brew install htop-osx
brew install imagemagick
brew install kubernetes-cli
brew install lua
brew install lynx
brew install mas
brew install meilisearch
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
brew install pyenv
brew install pyenv-virtualenv
brew install pypy3
brew install python@3.9
brew install qpdf
brew install rename
brew install ripgrep
brew install rust
# brew install s3cmd
brew install sops
brew install sox
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
brew install xgboost
brew install xz
brew install youtube-dl
brew install zopfli


# For building Python with pyenv
brew install openssl readline sqlite3 xz zlib


# Casks
brew install --cask adobe-creative-cloud
brew install --cask alfred2
brew install --cask android-file-transfer
brew install --cask anki
#brew cask install backblaze
#brew cask install sublime-text
brew install --cask docker
brew install --cask firefox
#brew install --cask garmin-express
brew install --cask google-chrome
brew install --cask google-cloud-sdk
brew install --cask hammerspoon
brew install --cask imagealpha
brew install --cask imageoptim
brew install --cask iterm2
brew install --cask microsoft-teams
#brew cask install osxfuse
brew install --cask protonvpn
#brew cask install silverlight
brew install --cask skype
brew install --cask skype-for-business
brew install --cask slack
brew install --cask spotify
brew install --cask steam
brew install --cask the-unarchiver
brew install --cask transmission
brew install --cask tunnelblick
brew install --cask vlc

open '/usr/local/Caskroom/adobe-creative-cloud/latest/Creative Cloud Installer.app'
#open '/usr/local/Caskroom/backblaze/latest/Backblaze Installer.app'

#git lfs install
#helm plugin install https://github.com/futuresimple/helm-secrets
helm plugin install https://github.com/jkroepke/helm-secrets


# Quicklooks
#brew cask install qlcolorcode
#brew cask install qlstephen
#brew cask install qlmarkdown
#brew cask install quicklook-json
#brew cask install qlprettypatch
#brew cask install quicklook-csv
#brew cask install webpquicklook
#brew cask install suspicious-package


# Fonts
brew install --cask 'font-source-code-pro'
brew install --cask 'font-fira-sans'


# Cleanup
brew cleanup
chmod go-w /usr/local/share
