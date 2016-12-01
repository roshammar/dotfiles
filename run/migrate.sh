#!/usr/local/bin/bash

mkdir -p ~/migration/home
mkdir ~/migration/home/.ipython

cp -R ~/.ssh ~/migration/home
cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration
cp ~/.z ~/.zhistory ~/migration/home
cp -r ~/.ipython/logs/ ~/.ipython/profile_default/history.sqlite ~/migration/home/.ipython
cp /etc/hosts ~/migration
