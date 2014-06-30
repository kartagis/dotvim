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

" generate event handler
nnoremap <buffer> <leader>h yiw}o<C-u>function <C-r>"(e){<CR>};<C-o>O
" console.log
nnoremap <buffer> <leader>l yiwm`o<C-u>console.log("<C-r>":", <C-r>"):<Esc>``

command! -buffer -range=% Format let b:winview = winsaveview() |
  \ execute <line1> . "," . <line2> . "!js-beautify -f - -j -B -s " . &shiftwidth |
  \ call winrestview(b:winview)

" poor man's syntastic ;-)
setlocal errorformat=%f:\ line\ %l\\,\ col\ %c\\,\ %m,%-G%.%#
setlocal makeprg=jshint
command! -buffer Make silent make % | silent redraw! | silent cwindow | silent wincmd p
autocmd BufWritePost <buffer> Make

function! JsIncludeExpr(file)
  if (filereadable(a:file))
    return a:file
  else
    let l:file2=substitute(substitute(a:file,'\\.js$','','g'),'$','/index.js','g')
    return l:file2
  endif
endfunction
setlocal include=require(.\\zs[^'\"]*\\ze
setlocal includeexpr=JsIncludeExpr(v:fname)
setlocal suffixesadd=.js
