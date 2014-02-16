nnoremap <buffer> <leader>g I// <Esc>A //<Esc>yyp0llv$hhhr-yykPjj

nnoremap <buffer> <C-]> :Bombit<CR>:tjump /<c-r>=expand('<cword>')<CR><CR>
nnoremap <buffer> <C-}> :Bombit<CR>:ptjump /<c-r>=expand('<cword>')<CR><CR>

nnoremap <silent> <buffer> ]] :call functions#Custom_jump('/\v^\s*(function\|var)')<cr>
nnoremap <silent> <buffer> [[ :call functions#Custom_jump('?\v^\s*(function\|var)')<cr>

xnoremap <buffer> ?? <Esc>'<yyP"_C/*<Esc>'>yyp"_C*/<Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

let b:match_words = '\<function\>:\<return\>,\<do\>:\<while\>,\<switch\>:\<case\>:\<default\>,\<if\>:\<else\>,\<try\>:\<catch\>:\<finally\>'

nnoremap <buffer> <leader>h :call functions#InsertHandler()<CR>
nnoremap <buffer> <leader>l :call functions#InsertLog()<CR>

command! -buffer Format call g:Jsbeautify()
