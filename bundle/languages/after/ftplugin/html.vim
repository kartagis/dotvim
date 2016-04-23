let @a = '$T"i border="0" style="display:block;"'

let b:match_words='<:>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'

setlocal define=\\sid\\=
setlocal indentkeys-=*<Return>

" poor man's block commenting
xnoremap <buffer> ?? <Esc>'<yyP"_C<!--<Esc>'>yyp"_C--><Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

" comment text-object
xnoremap <buffer> i? ?<C-r>=split(&commentstring, "%s")[0]<CR><CR>o/<C-r>=split(&commentstring, "%s")[1]<CR><CR>
onoremap <buffer> i? :<C-u>normal vi?<CR>
nmap     <buffer> !! vi?!!

" dealing with entities
nnoremap <buffer> ,& :call html#Entities()<CR>
nnoremap <buffer> ,é :call html#ReverseEntities()<CR>
xnoremap <buffer> ,& :call html#Entities()<CR>
xnoremap <buffer> ,é :call html#ReverseEntities()<CR>

command! -buffer Entities    call html#Entities()
command! -buffer RevEntities call html#RevEntities()

command! -buffer URLEncode    call html#URLencoding()
command! -buffer RevURLEncode call html#ReverseURLencoding()

" dealing with attributes
nnoremap <buffer> cia /\v"\ze[ >/]<CR>ci"
nnoremap <buffer> dia /\v"\ze[ >/]<CR>di"
nnoremap <buffer> yia /\v"\ze[ >/]<CR>yi"
nnoremap <buffer> via /\v"\ze[ >/]<CR>vi"

" à revoir
" nnoremap <buffer> caa /\v"[ >/]/e<CR>vF=bc
" nnoremap <buffer> daa /\v"[ >/]/e<CR>vF=bd
" nnoremap <buffer> yaa /\v"[ >/]/e<CR>vF=by
" nnoremap <buffer> vaa /\v"[ >/]/e<CR>vF=b

" jump from one block-level element to the next
nnoremap <silent> <buffer> ]] :call jump#Jump('/<\(html\\|body\\|head\\|address\\|article\\|aside\\|audio\\|blockquote\\|canvas\\|dd\\|div\\|dl\\|fieldset\\|figcaption\\|figure\\|footer\\|form\\|h1\\|header\\|hgroup\\|hr\\|noscript\\|ol\\|output\\|p\\|pre\\|section\\|table\\|tfoot\\|ul\\|video\)')<cr>
nnoremap <silent> <buffer> [[ :call jump#Jump('?<\(html\\|body\\|head\\|address\\|article\\|aside\\|audio\\|blockquote\\|canvas\\|dd\\|div\\|dl\\|fieldset\\|figcaption\\|figure\\|footer\\|form\\|h1\\|header\\|hgroup\\|hr\\|noscript\\|ol\\|output\\|p\\|pre\\|section\\|table\\|tfoot\\|ul\\|video\)')<cr>

command! -buffer UA call html#UpdateAnchor()

command! -buffer UW call html#UpdateWidth()

" formatting
command! -buffer -range=% Format let b:winview = winsaveview() |
  \ execute <line1> . "," . <line2> . "!html-beautify -f - -I -s " . &shiftwidth |
  \ call winrestview(b:winview)
