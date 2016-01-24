setlocal define=^\\s*\\(self\\\|this\\\|function\\\|var\\\|define\\)[('\"]\\{-\\}
setlocal suffixesadd+=.js
if &expandtab
  let &l:include = '^\s\{,' . &shiftwidth . "}\\(import[^'\\\"]*\\|.\\{-\\}require\(\\)*['\\\"]\\zs[^'\\\"]*\\ze"
else
  let &l:include = "^\t*\\(import[^'\\\"]*\\|.\\{-\\}require\(\\)*['\\\"]\\zs[^'\\\"]*\\ze"
endif

" matchit
let b:match_words = '\<function\>:\<return\>,'
  \ . '\<do\>:\<while\>,'
  \ . '\<switch\>:\<case\>:\<default\>,'
  \ . '\<if\>:\<else\>,'
  \ . '\<try\>:\<catch\>:\<finally\>'

" banner
nnoremap <buffer> ,g I// <Esc>A //<Esc>yyp0llv$hhhr-yykPjj

" tag jumps
nnoremap <buffer> <C-]> :tjump /<c-r>=expand('<cword>')<CR><CR>
nnoremap <buffer> <C-}> :ptjump /<c-r>=expand('<cword>')<CR><CR>

" quick moves
nnoremap <silent> <buffer> ]] :call jump#Jump('/function')<cr>
nnoremap <silent> <buffer> [[ :call jump#Jump('?function')<cr>

" block un/comment
xnoremap <buffer> ?? <Esc>'<yyP"_C/*<Esc>'>yyp"_C*/<Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

" select whole function
xnoremap <buffer> af :<C-u>call javascript#SelectFunction()<CR>
onoremap <buffer> af :normal vaf<CR>

" generate event handler
nnoremap <buffer> ,h yiw}o<C-r><C-u>function <C-r>"(event){<CR>};<C-o>O

" generate console.log()
nnoremap <buffer> ,l :put='console.log(\"' . expand('<cword>') . '\", ' . expand('<cword>') . ');'<CR>==
xnoremap <buffer> ,l :<C-u>put='console.log(\"' . visual#GetSelection() . '\", ' . visual#GetSelection() . ');'<CR>==

" fix a hasty console.log()
nnoremap <buffer> ,q ciw"<C-r>"", <C-r>"<Esc>
xnoremap <buffer> ,q c"<C-r>"", <C-r>"<Esc>

" transform into underscore placeholder
nnoremap <buffer> ,u "uciw<%= <C-r>u %><Esc>BB
xnoremap <buffer> ,u "uc<%= <C-r>u %><Esc>BB

" reformat selection
command! -buffer -range=% Format let b:winview = winsaveview() |
  \ execute <line1> . "," . <line2> . "!js-beautify -f - -j -t -s " . &shiftwidth |
  \ call winrestview(b:winview)

" poor man's syntastic ;-)
setlocal errorformat=%f:\ line\ %l\\,\ col\ %c\\,\ %m,%-G%.%#
setlocal makeprg=jshint
autocmd! BufWritePost <buffer> silent make % | silent redraw! | silent wincmd p
