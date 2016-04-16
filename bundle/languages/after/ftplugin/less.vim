setlocal iskeyword+=-
setlocal define=^\\s*\\%(@mixin\\\|=\\)
setlocal includeexpr=
setlocal comments=s1:/*,mb:*,ex:*/

let &l:include = '^\s*@import\s\+\%(url(\)\=["'']\='

nnoremap <buffer> <C-]> :tjump /<c-r>=expand('<cword>')<CR><CR>
nnoremap <buffer> <C-}> :ptjump /<c-r>=expand('<cword>')<CR><CR>
