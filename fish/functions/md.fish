function md -d "Creates a new directory if it doesn't exist and then cd's into it"
  mkdir -p "$argv"; and cd "$argv"
end
