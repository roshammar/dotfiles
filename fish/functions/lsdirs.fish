function lsdirs -d "ls directories only"
  ls -l | grep --color=never '^d'
end