let b:match_words = '\<function\>:\<return\>,'
  \ . '\<do\>:\<while\>,'
  \ . '\<switch\>:\<case\>:\<default\>,'
  \ . '\<if\>:\<else\>,'
  \ . '\<try\>:\<catch\>:\<finally\>'

nnoremap <buffer> <leader>g I// <Esc>A //<Esc>yyp0llv$hhhr-yykPjj

nnoremap <buffer> <C-]> :Bombit<CR>:tjump /<c-r>=expand('<cword>')<CR><CR>
nnoremap <buffer> <C-}> :Bombit<CR>:ptjump /<c-r>=expand('<cword>')<CR><CR>

nnoremap <silent> <buffer> ]] :call functions#global#Custom_jump('/\v^\s*(function\|var)')<cr>
nnoremap <silent> <buffer> [[ :call functions#global#Custom_jump('?\v^\s*(function\|var)')<cr>

xnoremap <buffer> ?? <Esc>'<yyP"_C/*<Esc>'>yyp"_C*/<Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

nnoremap <buffer> <leader>h :call javascript#InsertHandler()<CR>
nnoremap <buffer> <leader>l yiwm`oconsole.log("":", ");``

command! -buffer -range=% Format let b:winview = winsaveview() |
  \ execute <line1> . "," . <line2> . "!js-beautify -f - -j -B -s " . &shiftwidth |
  \ call winrestview(b:winview)

" poor man's syntastic
" setlocal errorformat=%f:\ line\ %l\\,\ col\ %c\\,\ %m,%-G%.%#
" setlocal makeprg=jshint
" inoremap <silent> <buffer> <Esc> <Esc>:silent make % <bar> redraw! <bar> cwindow <bar> wincmd p<CR>
