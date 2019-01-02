#!/usr/bin/env bash

# This assumes this script lives in /Volumes/<vol>/<migration folder>/home/projects/dotfiles/run
SRC=../../../..

cp -Rp ${SRC}/home/.ssh ${SRC}/home/data ${SRC}/home/projects ${SRC}/home/work ~/

mkdir ~/.ssh/control
mkdir -p ~/.ipython/profile_default/
mkdir -p ~/.local/share/fish/
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Local/


cp -Rp ${SRC}/home/.ipython/logs ~/.ipython/
cp -Rp ${SRC}/home/.ipython/profile_default/history.sqlite ~/.ipython/profile_default/


# cp -Rp ${SRC}/home/.config/fish ~/migration/home

# cp -Rp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration

sudo cp ${SRC}/hosts /etc/hosts


cp ${SRC}/fish_history ~/.local/share/fish/fish_history

cp ${SRC}/License.sublime_license ~/Library/Application\ Support/Sublime\ Text\ 3/Local/License.sublime_license ~/migration

