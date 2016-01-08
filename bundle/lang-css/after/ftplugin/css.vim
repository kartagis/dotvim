setlocal iskeyword+=%
setlocal iskeyword+=-

xnoremap <buffer> ?? <Esc>'<yyP"_C/*<Esc>'>yyp"_C*/<Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

command! -buffer -range=% Format let b:winview = winsaveview() |
  \ execute <line1> . "," . <line2> . "!css-beautify -f - -s " . &shiftwidth |
  \ call winrestview(b:winview)
