function ll -d "GNU ls with extra args"
  if count $argv > /dev/null
    set target $argv
  else
    set target '.'
  end

  gls --color=auto --almost-all --human-readable --group-directories-first -l --classify $target
end
