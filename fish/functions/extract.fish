function extract -d "Extract compressed file"
  set filename $argv[1]
  set parts (string split . $filename)
  set ext (string join . $parts[2..-1])
	switch ext
		case tar.bz2
		  tar xjf $filename
		case tar.gz
			tar xzf $filename
		case tar.xz
			tar Jxvf $filename
		case tar.Z
			tar xzf $filename
		case tar
      tar xf $filename
		case taz
      tar xzf $filename
		case tb2
      tar xjf $filename
		case tbz
      tar xjf $filename
		case tbz2
      tar xjf $filename
		case tgz
      tar xzf $filename
		case txz
      tar Jxvf $filename
		case zip
      unzip $filename
    case gz
    	gunzip $filename
		case '*'
			echo "Unknown extension $ext"
	end
end