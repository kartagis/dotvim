setlocal iskeyword+=-

nnoremap <buffer> <C-]> :tjump /<c-r>=expand('<cword>')<CR><CR>
nnoremap <buffer> <C-}> :ptjump /<c-r>=expand('<cword>')<CR><CR>
