function ip -d 'Merge PDF files. Usage: mergepdf -o output.pdf input{1,2,3}.pdf'
  /System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py "$argv"
end