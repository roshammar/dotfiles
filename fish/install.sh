#!/usr/bin/env bash

# Make sure conf dir exists
functions_dir=$HOME/.config/fish/functions
mkdir -p $functions_dir

# Link fish config
ln -s $HOME/projects/dotfiles/fish/config.fish ~/.config/fish/config.fish

# Link function files
for fname in $HOME/projects/dotfiles/fish/functions/*
do
  ln -s $fname $functions_dir
done

# Install shell
if ! fgrep -q '/usr/local/bin/fish' /etc/shells; then
  echo '/usr/local/bin/fish' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/fish;
fi;
