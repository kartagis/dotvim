setlocal iskeyword+=-
setlocal define=^\\s*\\%(@mixin\\\|=\\)
setlocal includeexpr=
setlocal comments=s1:/*,mb:*,ex:*/

" block un/comment
xnoremap <buffer> ?? <Esc>'<yyP"_C/*<Esc>'>yyp"_C*/<Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<
nmap     <buffer> !! vi?!!

" comment text-object
xnoremap <buffer> i? ?/\*<CR>o/\*\/<CR>
onoremap <buffer> i? :<C-u>normal vi?<CR>

let &l:include = '^\s*@import\s\+\%(url(\)\=["'']\='

nnoremap <buffer> <C-]> :tjump /<c-r>=expand('<cword>')<CR><CR>
nnoremap <buffer> <C-}> :ptjump /<c-r>=expand('<cword>')<CR><CR>
