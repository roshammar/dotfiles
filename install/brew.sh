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
brew tap caskroom/fonts
brew tap homebrew/versions
brew tap burntsushi/ripgrep https://github.com/BurntSushi/ripgrep.git


apps=(
	antigen
  bash
  bash-completion2
  binutils
  boost-python --with-python3
  burntsushi/ripgrep/ripgrep-bin
  coreutils
  diffutils
  elm
  findutils
  fswatch
  git
  git-lfs
  gnu-sed --with-default-names
  graphicsmagick
  homebrew/dupes/grep
  homebrew/dupes/openssh
  homebrew/dupes/screen
  homebrew/python/matplotlib --with-python3
  homebrew/python/numpy --with-python3
  homebrew/python/pillow --with-python3
  homebrew/python/scipy --with-python3
  htop-osx
  imagemagick --with-webp
  lua
  lynx
  mas
  mercurial
  moreutils
  nim
  node
  p7zip
  pigz
  ponyc
  pv
  pypy
  pypy3
  python
  python3
  rename
  rust
  s3cmd
  sqlite
  ssh-copy-id
  svtplay-dl
  tidy-html5
  tree
  vbindiff
  vim --override-system-vi
  webkit2png
  wget --with-iri
  xz
  youtube-dl
  zopfli
  zsh
  zsh-completions
)

casks=(
  alfred2
  android-file-transfer
  bankid
  caskroom-versions/sublime-text3
  dropbox
  firefox
  google-chrome
  google-cloud-sdk
  hammerspoon
  imagealpha
  imageoptim
  iterm2
  miro-video-converter
  nvalt
  silverlight
  skype
  spotify
  sshfs
  the-unarchiver
  transmission
  vlc
)

quicklooks=(
  qlcolorcode
  qlstephen
  qlmarkdown
  quicklook-json
  qlprettypatch
  quicklook-csv
  betterzipql
  qlimagesize
  webpquicklook
  suspicious-package
)

fonts=(
  'font-source-code-pro'
)

brew install "${apps[@]}"
brew cask install "${casks[@]}"
brew cask install "${quicklooks[@]}"
brew cask install "${fonts[@]}"

brew cleanup