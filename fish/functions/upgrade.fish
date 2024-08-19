function upgrade -d "Upgrade system"
  brew update
  brew upgrade
  brew cleanup
  mas upgrade
  gcloud components update
  sudo softwareupdate -i -a
end
