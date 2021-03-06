#!/usr/local/bin/bash

mkdir -p ~/migration/home
mkdir ~/migration/home/.ipython

rm ~/.ssh/control/*
rm ~/.ssh/config  # linked file
cp -Rp ~/.ssh ~/migration/home
cp -Rp ~/.ipython/logs ~/.ipython/profile_default/history.sqlite ~/migration/home/.ipython
cp -Rp ~/.config/fish ~/migration/home

mv ~/data ~/migration/home
mv ~/work ~/migration/home
mv ~/projects ~/migration/home
cp -R ~/Downloads ~/migration/home

cp -Rp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration
cp -Rp ~/Library/Spelling/LocalDictionary ~/migration
cp /etc/hosts ~/migration
cp -p ~/.local/share/fish/fish_history ~/migration
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Local/License.sublime_license ~/migration

DATE=`date +%Y-%m-%d`
cp -Rp ~/migration /Volumes/Femman/migration-${DATE}