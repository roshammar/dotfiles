function git-undo -d "Undo your last commit, but don't throw away your changes"
  git reset --soft HEAD^
end
