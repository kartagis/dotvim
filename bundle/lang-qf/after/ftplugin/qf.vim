setlocal nowrap
setlocal norelativenumber
setlocal number

" force position of the quickfix window
wincmd J

" come back after <CR>
nnoremap <buffer> <CR> <CR><C-w>p

" filter location/quickfix list
command! -buffer -nargs=* Filter call functions#global#FilterList(<q-args>)
nnoremap <silent> <buffer> § :Filter <C-r><C-f><CR>

" restore location/quickfix list
command! -buffer Restore call functions#global#RestoreList()
nnoremap <silent> <buffer> <F5> :Restore<CR>
