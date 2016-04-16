setlocal comments=://
setlocal commentstring=//\ %s

augroup asciidoc
    autocmd BufWritePost <buffer> silent !asciidoctor %
augroup END
