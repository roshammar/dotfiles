#!/usr/bin/env bash

./xcode.sh
./brew.sh

if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

./appstore.sh
./node.sh
./python.sh
