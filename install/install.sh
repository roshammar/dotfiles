#!/usr/bin/env bash

cd "${BASH_SOURCE%/*}"

./xcode.sh
./brew.sh

# Install better nanorc config
# https://github.com/scopatz/nanorc
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

./appstore.sh
./node.sh
./python.sh
