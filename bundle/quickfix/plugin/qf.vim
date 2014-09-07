" <Home> and <End> go up and down the quickfix list
nnoremap <silent> <Home> :call qf#WrapCommand('up', 'c')<CR>
nnoremap <silent> <End>  :call qf#WrapCommand('down', 'c')<CR>

" <C-Home> and <C-End> go up and down the location list
nnoremap <silent> <C-Home> :call qf#WrapCommand('up', 'l')<CR>
nnoremap <silent> <C-End>  :call qf#WrapCommand('down', 'l')<CR>
