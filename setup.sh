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
target_dir="$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
pth=`pwd`/sublime/
for fname in `ls -A $pth`
do
  target_file="${target_dir}${fname}"
  ln -s "${pth}${fname}" "${target_file}"
done

# Restore $IFS
IFS=$SAVEIFS

# Configure OS
run/macos.sh

# Install Zsh
zsh/install.sh

# Restore sleep
killall caffeinate
