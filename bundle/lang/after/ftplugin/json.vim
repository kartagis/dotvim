"uncomment to enable folding of `{...}` and `[...]` blocks
"setlocal foldmethod=syntax

if has('conceal')
  setlocal conceallevel=0

endif

command! -buffer -range=% Format let b:winview = winsaveview() |
  \ execute <line1> . "," . <line2> . "!js-beautify -f - -j -B -s " . &shiftwidth |
  \ call winsaveview(b:winview)

