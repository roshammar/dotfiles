#!/usr/bin/env bash

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
fi

brew update
brew upgrade

brew tap caskroom/cask
brew tap caskroom/homebrew-versions
brew tap caskroom/fonts
brew tap homebrew/fuse
brew tap homebrew/versions
brew tap burntsushi/ripgrep https://github.com/BurntSushi/ripgrep.git


# Apps
brew install antigen
brew install bash
brew install bash-completion2
brew install binutils
brew install boost-python --with-python3 --without-python
brew install burntsushi/ripgrep/ripgrep-bin
brew install coreutils
brew install diffutils
brew install elm
brew install exiftool
brew install findutils
brew install ffmpeg
brew install fswatch
brew install git
brew install git-lfs
brew install gnu-sed --with-default-names
brew install graphicsmagick
brew install homebrew/dupes/grep
brew install homebrew/dupes/nano
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/fuse/sshfs
brew install homebrew/science/matplotlib --with-python3 --without-python
brew install homebrew/science/pillow --with-python3 --without-python
brew install htop-osx
brew install imagemagick --with-webp
brew install kubernetes-cli
brew install lua
brew install lynx
brew install mas
brew install mercurial
brew install moreutils
brew install mupdf-tools
brew install ncdu
brew install nim
brew install node
brew install numpy --with-python3 --without-python
brew install p7zip
brew install pigz
brew install ponyc
brew install pv
brew install pypy3
brew install python3
brew install qpdf
brew install rename
brew install rust
brew install s3cmd
brew install scipy --with-python3 --without-python
brew install sqlite
brew install ssh-copy-id
brew install svtplay-dl
brew install tidy-html5
brew install tree
brew install vbindiff
brew install vim --with-override-system-vi
brew install watch
brew install webkit2png
brew install wget --with-iri
brew install xz
brew install youtube-dl
brew install zopfli
brew install zsh
brew install zsh-completions


# Casks
brew cask install alfred2
brew cask install android-file-transfer
brew cask install bankid
brew cask install sublime-text
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install google-cloud-sdk
brew cask install hammerspoon
brew cask install imagealpha
brew cask install imageoptim
brew cask install iterm2
brew cask install nvalt
brew cask install osxfuse
brew cask install silverlight
brew cask install skype
brew cask install spotify
brew cask install sshfs
brew cask install the-unarchiver
brew cask install transmission
brew cask install vlc


# Quicklooks
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install qlimagesize
brew cask install webpquicklook
brew cask install suspicious-package


# Fonts
brew cask install 'font-source-code-pro'


# Cleanup
brew cleanup
chmod go-w /usr/local/share
