#!/usr/bin/env bash

if ! fgrep -q '/usr/local/bin/fish' /etc/shells; then
  echo '/usr/local/bin/fish' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/fish;
fi;

mkdir -p ~/.config/fish/
ln -s $HOME/projects/dotfiles/fish/config.fish ~/.config/fish/config.fish

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

fisher add rafaelrinaldi/pure
fisher add franciscolourenco/done
fisher add jethrokuan/z