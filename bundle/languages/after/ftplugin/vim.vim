nnoremap <buffer> ,g I" <Esc>A "<Esc>yyp0lv$hhr"yykPjj

xnoremap <buffer> af :<C-u>call <SID>SelectFunction()<CR>
onoremap <buffer> af :normal vaf<CR>

setlocal define=^\\s*\\(function\\\|command\\)

setlocal keywordprg=:help

function! s:SelectFunction()
    call search("^\s*function", "bWc")
    normal v%V
endfunction
