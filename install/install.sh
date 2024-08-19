#!/usr/bin/env bash

cd "${BASH_SOURCE%/*}"

# Install Xcode command line tools
xcode-select --install &> /dev/null
until xcode-select --print-path &> /dev/null; do
  sleep 5
done

./brew.sh

# Install better nanorc config
# https://github.com/scopatz/nanorc
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

git lfs install
helm plugin install https://github.com/jkroepke/helm-secrets

if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
fi;
