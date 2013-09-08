xnoremap <buffer> ?? <Esc>'<yyP"_C<!--<Esc>'>yyp"_C--><Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

nnoremap <buffer> <leader>i o<Esc>:IMG im[ag]*/<C-z>
inoremap <buffer> <leader>i <Esc>:IMG im[ag]*/<C-z>

nnoremap <buffer> <leader>& :EE<CR>
nnoremap <buffer> <leader>é :RE<CR>
xnoremap <buffer> <leader>& :UU<CR>
xnoremap <buffer> <leader>é :RU<CR>

command! -buffer -range -count EE :call functions#Entities()
command! -buffer -range -count RE :call functions#ReverseEntities()

command! -buffer -range -count UU :call functions#URLencoding()
command! -buffer -range -count RU :call functions#ReverseURLencoding()

command! -buffer AA :call functions#UpdateAnchor()

command! -buffer WW :call functions#UpdateWidth()

nnoremap <buffer> <leader>< /<\w*\(\s\\|>\)<CR>
nnoremap <buffer> <leader>> ?<\w*\(\s\\|>\)<CR>

nnoremap <buffer> cia /\v"\ze[ >/]<CR>ci"
nnoremap <buffer> dia /\v"\ze[ >/]<CR>di"
nnoremap <buffer> yia /\v"\ze[ >/]<CR>yi"
nnoremap <buffer> via /\v"\ze[ >/]<CR>vi"

let b:match_words='<:>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'

setlocal indentkeys-=*<Return>

if has('gui_running')
  if os == 'Darwin' || os == 'Mac'
    nnoremap <buffer> <F12>f :exe ':silent !open -a firefox %'<CR>
    nnoremap <buffer> <F12>c :exe ':silent !open -a "google chrome" %'<CR>
    nnoremap <buffer> <F12>o :exe ':silent !open -a opera %'<CR>
    nnoremap <buffer> <F12>s :exe ':silent !open -a safari %'<CR>
  elseif os == 'Linux'
    nnoremap <buffer> <F12>f :exe ':silent !firefox % &'<CR>
    nnoremap <buffer> <F12>c :exe ':silent !chromium-browser % &'<CR>
    nnoremap <buffer> <F12>o :exe ':silent !opera % &'<CR>
  endif
endif
