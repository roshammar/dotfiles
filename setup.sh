#!/usr/bin/env bash

# Prevent sleep while this script is running
caffeinate -is &

# Fix for file names containing spaces
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

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

# Copy files
cp -R `pwd`/copy/ $HOME

# Install apps, tools, dependencies
install/install.sh 2>&1 | tee -a install.log.`date +%Y-%m-%d`

# SSH config
mkdir -p ~/.ssh
ln -s ~/projects/dotfiles/ssh/config ~/.ssh/

# Restore $IFS
IFS=$SAVEIFS

# Configure OS
run/macos.sh

# Install Fish
fish/install.sh

# Set hostname
sudo hostname 'gray'
sudo scutil --set ComputerName "gray"
sudo scutil --set LocalHostName "gray"
sudo scutil --set HostName "gray"

# Restore sleep
killall caffeinate
