setlocal nowrap
setlocal norelativenumber
setlocal number

" are we in a location list or a quickfix list?
let b:isLoc = len(getloclist(0)) > 0 ? 1 : 0

" force position of the quickfix window
wincmd J

" come back after <CR>
nnoremap <buffer> <CR> <CR><C-w>p

" taken from ack.vim
" let's try them
nnoremap <buffer> t    <C-W><CR><C-W>T
nnoremap <buffer> T    <C-W><CR><C-W>TgT<C-W>j
nnoremap <buffer> o    <CR>
nnoremap <buffer> O    <CR><C-W><C-W>:ccl<CR>
nnoremap <buffer> go   <CR><C-W>j
nnoremap <buffer> h    <C-W><CR><C-W>K
nnoremap <buffer> H    <C-W><CR><C-W>K<C-W>b
nnoremap <buffer> v    <C-W><CR><C-W>H<C-W>b<C-W>J<C-W>t
nnoremap <buffer> gv   <C-W><CR><C-W>H<C-W>b<C-W>J

" filter location/quickfix list
command! -buffer -nargs=* Filter call qf#FilterList(<q-args>)
nnoremap <silent> <buffer> § :Filter <C-r><C-f><CR>

" restore location/quickfix list
command! -buffer Restore call qf#RestoreList()
nnoremap <silent> <buffer> <F5> :Restore<CR>

" do something on each line in the location/quickfix list
command! -buffer -nargs=1 Doline call qf#DoList(1, <q-args>)

" do something on each file in the location/quickfix list
command! -buffer -nargs=1 Dofile call qf#DoList(0, <q-args>)
