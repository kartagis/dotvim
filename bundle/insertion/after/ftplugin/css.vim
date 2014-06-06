command! -buffer -nargs=* -complete=file IMG call insertion#InsertIMG(<f-args>)

nnoremap <buffer> <leader>i o<Esc>:IMG im[ag]*/
inoremap <buffer> <leader>i <Esc>:IMG im[ag]*/

let b:exchange_words = [
      \ ["capitalize", "uppercase", "lowercase", "none"]
      \ ]
