setlocal nowrap
setlocal norelativenumber
setlocal number

" are we in a location list or a quickfix list?
let b:isLoc = len(getloclist(0)) > 0 ? 1 : 0

" force the quickfix window to be opened at the bottom
" of the screen and take teh full width
wincmd J

" open entry and come back
nnoremap <buffer> <CR> <CR><C-w>p

" inspired by Ack.vim
" open entry in a new tab.
nnoremap <buffer> t <C-w><CR><C-w>T
" open entry in a new vertical window.
nnoremap <buffer> v <C-w><CR><C-w>L<C-w>p<C-w>J<C-w>p
" open entry (same as enter).
nnoremap <buffer> o <CR>
" open entry and close the location/quickfix window.
if exists("b:isLoc")
    nnoremap <buffer> O <CR>:lclose<CR>
else
    nnoremap <buffer> O <CR>:cclose<CR>
endif

" filter the location/quickfix list
command! -buffer -nargs=* Filter call qf#FilterList(<q-args>)
nnoremap <silent> <buffer> § :Filter <C-r><C-f><CR>

" restore the location/quickfix list
command! -buffer Restore call qf#RestoreList()
nnoremap <silent> <buffer> <F5> :Restore<CR>

" do something on each line in the location/quickfix list
command! -buffer -nargs=1 Doline call qf#DoList(1, <q-args>)

" do something on each file in the location/quickfix list
command! -buffer -nargs=1 Dofile call qf#DoList(0, <q-args>)
