#!/usr/bin/env bash

# Prevent sleep while this script is running
caffeinate -is &

# Link config files
pth=`pwd`/link/
for fname in `ls -A $pth`
do
  ln -s $pth$fname $HOME/$fname
done

# Link scripts
mkdir -p $HOME/bin
pth=`pwd`/bin/
for fname in `ls -A $pth`
do
  ln -s $pth$fname $HOME/bin/$fname
done

# Install apps, tools, dependencies
install/install.sh 2>&1

# Configure OS
run/macos.sh

# Install Fish
fish/install.sh

# Set hostname
HOSTNAME="dorian"
sudo hostname "$HOSTNAME"
sudo scutil --set ComputerName "$HOSTNAME"
sudo scutil --set LocalHostName "$HOSTNAME"
sudo scutil --set HostName "$HOSTNAME"

# Restore sleep
killall caffeinate
