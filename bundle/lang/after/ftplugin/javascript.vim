nnoremap <buffer> <leader>g I// <Esc>A //<Esc>yyp0llv$hhhr-yykPjj

autocmd BufWritePost <buffer> call functions#Tagit()

nnoremap <silent> <buffer> ]] :call functions#Custom_jump('/\v^\s*(function\|var)')<cr>
nnoremap <silent> <buffer> [[ :call functions#Custom_jump('?\v^\s*(function\|var)')<cr>

xnoremap <buffer> ?? <Esc>'<yyP"_C/*<Esc>'>yyp"_C*/<Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

let b:match_words = '\<function\>:\<return\>,\<do\>:\<while\>,\<switch\>:\<case\>:\<default\>,\<if\>:\<else\>,\<try\>:\<catch\>:\<finally\>'

nnoremap <buffer> <leader>h :call functions#Handler()<CR>
nnoremap <buffer> <leader>l :call functions#InsertLog()<CR>
