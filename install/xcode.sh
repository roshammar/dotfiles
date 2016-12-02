#!/usr/bin/env bash

# Install Xcode command line tools
xcode-select --install &> /dev/null
until xcode-select --print-path &> /dev/null; do
  sleep 5
done

# Install Xcode
open "macappstores://itunes.apple.com/en/app/xcode/id497799835"
until [ -d "/Applications/Xcode.app" ];
do
  sleep 5
done

# Set Xcode developer directory
sudo xcode-select -switch "/Applications/Xcode.app/Contents/Developer" &> /dev/null

# Agree with Xcode licence
sudo xcodebuild -license accept &> /dev/null
