" qf.vim - Tame the quickfix window
" Maintainer:	romainl <romainlafourcade@gmail.com>
" Version:	0.0.1
" License:	Vim License (see :help license)
" Location:	plugin/qf.vim
" Website:	https://github.com/romainl/vim-qf

if exists("g:loaded_qf") || v:version < 703 || &compatible
  finish
endif
let g:loaded_qf = 1

let s:save_cpo = &cpo
set cpo&vim

" <Home> and <End> go up and down the quickfix list and wrap around
nnoremap        <silent> <Plug>QfCprevious :call qf#WrapCommand('up', 'c')<CR>
nnoremap        <silent> <Plug>QfCnext     :call qf#WrapCommand('down', 'c')<CR>

" <C-Home> and <C-End> go up and down the location list and wrap around
nnoremap        <silent> <Plug>QfLprevious :call qf#WrapCommand('down', 'l')<CR>
nnoremap        <silent> <Plug>QfLnext     :call qf#WrapCommand('up', 'l')<CR>

" jump to and from the location/quickfix window
nnoremap <expr> <silent> <Plug>QfSwitch    &filetype == "qf" ? "<C-w>p" : "<C-w>b"

" automatically open the location/quickfix window after :make, :grep,
" :lvimgrep and friends if there are valid locations/errors
augroup qf
    autocmd!
    autocmd QuickFixCmdPost grep,make,grepadd,vimgrep,vimgrepadd,cscope,cfile,cgetfile,caddfile,helpgrep cwindow
    autocmd QuickFixCmdPost lgrep,lmake,lgrepadd,lvimgrep,lvimgrepadd,lfile,lgetfile,laddfile lwindow
augroup END

let &cpo = s:save_cpo
