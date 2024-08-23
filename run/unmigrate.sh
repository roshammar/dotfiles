#!/usr/bin/env bash

caffeinate -is &

cd "$(dirname "$0")"
ROOT=../../../..

cp -Rp ${ROOT}/home/data ${ROOT}/home/docs ${ROOT}/home/projects ${ROOT}/home/work ~/
cp -Rp ${ROOT}/home/Downloads/* ~/Downloads/
cp -Rp ${ROOT}/home/.aws ${ROOT}/home/.kaggle ${ROOT}/home/.ssh ~/
# cp -Rp "${ROOT}/home/.pyenv" ~/

mkdir -p ~/.config
cp -Rp ${ROOT}/home/config/github-copilot ~/.config/
cp -Rp ${ROOT}/home/config/kitty ~/.config/
cp -Rp ${ROOT}/home/config/zed ~/.config/
cp -Rp ${ROOT}/home/config/starship.toml ~/.config/

cp -Rp ${ROOT}/LocalDictionary ~/Library/Spelling/
sudo cp ${ROOT}/hosts /etc/hosts
mkdir -p ~/.local/share/fish/
cp ${ROOT}/fish_history ~/.local/share/fish/fish_history

killall caffeinate
