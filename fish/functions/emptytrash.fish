function emptytrash -d "Empty trash on all volumes"
  # Empty the Trash on all mounted volumes and the main HDD.
  # Also, clear Apple’s System Logs to improve shell startup speed.
  set vols /Volumes/*/.Trashes
  if count $vols >/dev/null
    sudo rm -rfv $vols
  end

  sudo rm -rf ~/.Trash

  set asls /private/var/log/asl/*.asl
  if count $asls >/dev/null
    sudo rm -rfv $asls
  end

end