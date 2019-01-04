function upgrade -d "Upgrade system"
  brew update
  brew upgrade
  brew cleanup
  mas upgrade
  npm install npm -g
  npm update -g
  sudo gem update --system
  sudo gem update
  sudo gem cleanup
  gcloud components update
  sudo softwareupdate -i -a
end