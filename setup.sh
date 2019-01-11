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
install/install.sh 2>&1 | tee -a install.log

# Sublime Text config
target_dir="$HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/"
pth=`pwd`/sublime/
for fname in `ls -A $pth`
do
  target_file="${target_dir}${fname}"
  ln -s "${pth}${fname}" "${target_file}"
done

# Also, link MagicPython syntax as alias for Python syntax
ln -s "${pth}Python.sublime-settings" "${target_dir}MagicPython.sublime-settings"

# Ipython config
mkdir -p ~/.ipython/profile_default
mkdir -p ~/.ipython/logs
ln -s ~/projects/dotfiles/ipython/profile_default/ipython_config.py ~/.ipython/profile_default/

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
