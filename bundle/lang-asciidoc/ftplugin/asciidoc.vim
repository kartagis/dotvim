setlocal comments=://
setlocal commentstring=//\ %s

augroup asciidoc
    autocmd!
    autocmd BufWritePost <buffer> silent !asciidoctor %
augroup END
