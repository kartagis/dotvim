setlocal iskeyword+=-

" block un/comment
xnoremap <buffer> ?? <Esc>'<yyP"_C/*<Esc>'>yyp"_C*/<Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<
nmap     <buffer> !! vi?!!

" comment text-object
xnoremap <buffer> i? ?/\*<CR>o/\*\/<CR>
onoremap <buffer> i? :<C-u>normal vi?<CR>

nnoremap <buffer> <C-]> :tjump /<c-r>=expand('<cword>')<CR><CR>
nnoremap <buffer> <C-}> :ptjump /<c-r>=expand('<cword>')<CR><CR>

