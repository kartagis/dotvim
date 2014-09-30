setlocal define=^\\s*\\(function\\\|var\\)

" matchit
let b:match_words = '\<function\>:\<return\>,'
  \ . '\<do\>:\<while\>,'
  \ . '\<switch\>:\<case\>:\<default\>,'
  \ . '\<if\>:\<else\>,'
  \ . '\<try\>:\<catch\>:\<finally\>'

" banner
nnoremap <buffer> ,g I// <Esc>A //<Esc>yyp0llv$hhhr-yykPjj

" tag jumps
nnoremap <buffer> <C-]> :Bombit<CR>:tjump /<c-r>=expand('<cword>')<CR><CR>
nnoremap <buffer> <C-}> :Bombit<CR>:ptjump /<c-r>=expand('<cword>')<CR><CR>

" quick moves
nnoremap <silent> <buffer> ]] :call functions#global#Custom_jump('/\v^\s*(function\|var)')<cr>
nnoremap <silent> <buffer> [[ :call functions#global#Custom_jump('?\v^\s*(function\|var)')<cr>

" block un/comment
xnoremap <buffer> ?? <Esc>'<yyP"_C/*<Esc>'>yyp"_C*/<Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

" generate event handler
nnoremap <buffer> ,h yiw}o<C-r><C-u>function <C-r>"(event){<CR>};<C-o>O
" generate console.log
" FIXME
nnoremap <buffer> ,l yiwm`o<C-u>console.log("<C-r>":", <C-r>");<Esc>==``

" EXPERIMENTAL
" turns data.foo into "data.foo", data.foo
xnoremap <buffer> <F7> c"<C-r>"", <C-r>"<Esc>

" reformat selection
command! -buffer -range=% Format let b:winview = winsaveview() |
  \ execute <line1> . "," . <line2> . "!js-beautify -f - -j -B -s " . &shiftwidth |
  \ call winrestview(b:winview)

" poor man's syntastic ;-)
setlocal errorformat=%f:\ line\ %l\\,\ col\ %c\\,\ %m,%-G%.%#
setlocal makeprg=jshint
command! -buffer Make silent make % | silent redraw! | silent cwindow | silent wincmd p
autocmd! BufWritePost <buffer> Make
