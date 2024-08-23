#!/bin/bash

caffeinate -is &

DATE=`date +%Y-%m-%d`
TARGET="/Volumes/INTENSO/migration-${DATE}"

brew bundle dump --file ~/projects/dotfiles/install/Brewfile.new

mkdir -p "${TARGET}/home"
cp -Rp ~/data "${TARGET}/home/"
cp -Rp ~/docs "${TARGET}/home/"
cp -Rp ~/projects "${TARGET}/home/"
cp -Rp ~/work "${TARGET}/home/"
cp -Rp ~/Downloads "${TARGET}/home/"
cp -Rp ~/.aws "${TARGET}/home/"
cp -Rp ~/.kaggle "${TARGET}/home/"
cp -Rp ~/.ssh "${TARGET}/home/"


mkdir -p "${TARGET}/home/config"
# TODO: make symlink ?
cp -Rp ~/.config/github-copilot "${TARGET}/home/config/"
cp -Rp ~/.config/kitty "${TARGET}/home/config/"
cp -Rp ~/.config/zed "${TARGET}/home/config/"
cp -Rp ~/.config/starship.toml "${TARGET}/home/config/"

cp -Rp ~/Library/Spelling/LocalDictionary "${TARGET}"
cp /etc/hosts "${TARGET}"
cp -p ~/.local/share/fish/fish_history "${TARGET}"

ll ~/.pyenv/versions/ >> "${TARGET}/pyenv-versions.txt"

killall caffeinate
