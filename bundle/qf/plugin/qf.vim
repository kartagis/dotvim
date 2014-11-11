" qf.vim - Tame the quickfix window
" Maintainer:          romainl <romainlafourcade@gmail.com>
" Version:             0.1
" Website:             <https://github.com/romainl>

if exists("g:loaded_qf") || v:version < 703 || &compatible
  finish
endif
let g:loaded_qf = 1

" <Home> and <End> go up and down the quickfix list and wrap around
nnoremap <silent> <Home> :call qf#WrapCommand('up', 'c')<CR>
nnoremap <silent> <End>  :call qf#WrapCommand('down', 'c')<CR>

" <C-Home> and <C-End> go up and down the location list and wrap around
nnoremap <silent> <C-Home> :call qf#WrapCommand('up', 'l')<CR>
nnoremap <silent> <C-End>  :call qf#WrapCommand('down', 'l')<CR>
