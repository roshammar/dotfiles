#!/usr/bin/env bash

# Install apps, tools, dependencies
install/install.sh

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
pth=`pwd`/copy/
for fname in `ls -A $pth`
do
  cp -r $pth$fname $HOME/$fname
done

# Configure OS
run/macos.sh

# Sublime Text config
sublime/install.sh

# Install Zsh
zsh/install.sh