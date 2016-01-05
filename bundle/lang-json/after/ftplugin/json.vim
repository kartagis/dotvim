setlocal foldmethod=indent

if has('conceal')
  setlocal conceallevel=0
endif

command! -buffer -range=% Format let w:winview = winsaveview() |
  \ execute <line1> . "," . <line2> . "!js-beautify -f - -j -B -s " . &shiftwidth |
  \ call winsaveview(w:winview)
