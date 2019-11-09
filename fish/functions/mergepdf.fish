function ip -d 'Merge PDF files. Usage: mergepdf input{1,2,3}.pdf'
  gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=_merged.pdf "$argv"
end