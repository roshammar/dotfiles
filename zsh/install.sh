#!/usr/bin/env bash

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $THIS_DIR/.zshrc $HOME/.zshrc

curl -s https://raw.githubusercontent.com/getantibody/installer/master/install | bash -s
# echo 'source <(antibody init)' >> ~/.zshrc

# npm install --global pure-prompt

if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;
