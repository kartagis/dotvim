setlocal iskeyword+=%
setlocal iskeyword+=-

xnoremap <buffer> ?? <Esc>'<yyP"_C/*<Esc>'>yyp"_C*/<Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

command! -buffer -range=% Format let b:winview = winsaveview() |
  \ execute <line1> . "," . <line2> . "!css-beautify -f - -s " . &shiftwidth |
  \ call winrestview(b:winview)

let b:cycle_words = [
      \ ["capitalize", "uppercase", "lowercase", "none"],
      \ ["margin-top", "margin-right", "margin-bottom", "margin-left"],
      \ ["padding-top", "padding-right", "padding-bottom", "padding-left"],
      \ ["border-top", "border-right", "border-bottom", "border-left"]
      \ ]
