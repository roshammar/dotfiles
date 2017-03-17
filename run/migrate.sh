#!/usr/local/bin/bash

mkdir -p ~/migration/home
mkdir ~/migration/home/.ipython

cp -Rp ~/.ssh ~/migration/home
cp -Rp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration
cp -Rp ~/.z ~/.zhistory ~/migration/home
cp -Rp ~/.ipython/logs/ ~/.ipython/profile_default/history.sqlite ~/migration/home/.ipython
cp /etc/hosts ~/migration

cp ~/Library/Application\ Support/Sublime\ Text\ 3/Local/License.sublime_license ~/migration
