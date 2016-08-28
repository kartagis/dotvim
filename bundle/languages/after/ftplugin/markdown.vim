xnoremap <buffer> +b c**<C-r>"**<Esc>
xnoremap <buffer> +i c*<C-r>"*<Esc>
xnoremap <buffer> +c c`<C-r>"`<Esc>
xnoremap <buffer> <kPlus>b c**<C-r>"**<Esc>
xnoremap <buffer> <kPlus>i c*<C-r>"*<Esc>
xnoremap <buffer> <kPlus>c c`<C-r>"`<Esc>

function! s:MDGoToSection()
    let raw_filename = expand('<cfile>')
    let arg = substitute(raw_filename, '\([^#]*\)\(#\{1,6\}\)\([^#]*\)', '+\/\2\\\\s\3 \1', 'g')
    execute "edit" arg
endfunction

nnoremap <buffer> gF :call <SID>MDGoToSection()<CR>
