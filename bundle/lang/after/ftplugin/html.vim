xnoremap <buffer> ?? <Esc>'<yyP"_C<!--<Esc>'>yyp"_C--><Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

nnoremap <buffer> <leader>& :call functions#Entities()<CR>
nnoremap <buffer> <leader>é :call functions#ReverseEntities()<CR>
xnoremap <buffer> <leader>& :call functions#Entities()<CR>
xnoremap <buffer> <leader>é :call functions#ReverseEntities()<CR>
command! -buffer Entities :call functions#Entities()
command! -buffer Entities :call functions#RevEntities()

command! -buffer UA :call functions#UpdateAnchor()

command! -buffer UW :call functions#UpdateWidth()

command! -buffer URLEncode :call functions#URLencoding()
command! -buffer RevURLEncode :call functions#ReverseURLencoding()

nnoremap <buffer> cia /\v"\ze[ >/]<CR>ci"
nnoremap <buffer> dia /\v"\ze[ >/]<CR>di"
nnoremap <buffer> yia /\v"\ze[ >/]<CR>yi"
nnoremap <buffer> via /\v"\ze[ >/]<CR>vi"

" à revoir
" nnoremap <buffer> caa /\v"[ >/]/e<CR>vF=bc
" nnoremap <buffer> daa /\v"[ >/]/e<CR>vF=bd
" nnoremap <buffer> yaa /\v"[ >/]/e<CR>vF=by
" nnoremap <buffer> vaa /\v"[ >/]/e<CR>vF=b

nnoremap <silent> <buffer> ]] :call functions#Custom_jump('/<\(html\\|body\\|head\\|address\\|article\\|aside\\|audio\\|blockquote\\|canvas\\|dd\\|div\\|dl\\|fieldset\\|figcaption\\|figure\\|footer\\|form\\|h1\\|header\\|hgroup\\|hr\\|noscript\\|ol\\|output\\|p\\|pre\\|section\\|table\\|tfoot\\|ul\\|video\)')<cr>
nnoremap <silent> <buffer> [[ :call functions#Custom_jump('?<\(html\\|body\\|head\\|address\\|article\\|aside\\|audio\\|blockquote\\|canvas\\|dd\\|div\\|dl\\|fieldset\\|figcaption\\|figure\\|footer\\|form\\|h1\\|header\\|hgroup\\|hr\\|noscript\\|ol\\|output\\|p\\|pre\\|section\\|table\\|tfoot\\|ul\\|video\)')<cr>

let @a = '$T"i border="0" style="display:block;"'

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
