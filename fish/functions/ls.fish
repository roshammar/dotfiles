function ls -d "GNU ls with color"
  if count $argv > /dev/null
    set target $argv
  else
    set target '.'
  end

  gls --color=auto --classify $target
end
