#!/usr/bin/env bash

mkdir -p ~/migration/home

cp -R ~/.ssh ~/migration/home
cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration
cp ~/.z ~/.zhistory ~/migration
