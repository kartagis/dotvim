command! -buffer -nargs=* -complete=file IMG call insertion#InsertIMG(<f-args>)

nnoremap <buffer> ,i o<Esc>:IMG im[ag]*/
inoremap <buffer> ,i <Esc>:IMG im[ag]*/
