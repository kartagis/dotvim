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

" jump to and from the quickfix window
nnoremap <expr> ç &filetype == "qf" ? "<C-w>p" : "<C-w>b"

" If needed, automatically opens the quickfix/location window after :make, :grep,
" :lvimgrep and friends.
augroup qf
    autocmd!
    autocmd QuickFixCmdPost grep,make,grepadd,vimgrep,vimgrepadd,cscope,cfile,cgetfile,caddfile,helpgrep cwindow
    autocmd QuickFixCmdPost lgrep,lmake,lgrepadd,lvimgrep,lvimgrepadd,lfile,lgetfile,laddfile lwindow
augroup END
