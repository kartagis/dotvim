setlocal nowrap
setlocal norelativenumber
setlocal number

" force position of the quickfix window
wincmd J

" come back after <CR>
nnoremap <buffer> <CR> <CR><C-w>p

" filter location list
command! -buffer -nargs=* Filter call functions#global#FilterLocList(<q-args>)

" reset location list
nnoremap <silent> <buffer> <F5> :try \| call setloclist(0, g:locl) \| catch \| endtry<CR>
