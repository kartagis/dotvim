nnoremap <buffer> <leader>g I// <Esc>A //<Esc>yyp0llv$hhhr-yykPjj

nnoremap <leader>] :tjump /<c-r>=expand('<cword>')<CR><CR>
nnoremap <leader>} :ptag /<c-r>=expand('<cword>')<CR><CR>

if exists(':Tagit') == 2
  inoremap <buffer> <Esc> <Esc>:Tagit<CR>
endif

nnoremap <silent> <buffer> ]] :call <SID>Javascript_jump('/^function')<cr>
nnoremap <silent> <buffer> [[ :call <SID>Javascript_jump('?^function')<cr>
nnoremap <silent> <buffer> ]m :call <SID>Javascript_jump('/^\s*function')<cr>
nnoremap <silent> <buffer> [m :call <SID>Javascript_jump('?^\s*function')<cr>

if exists('*<SID>Javascript_jump') | finish | endif

fun! <SID>Javascript_jump(motion) range
    let cnt = v:count1
    let save = @/    " save last search pattern
    mark '
    while cnt > 0
      silent! exe a:motion
      let cnt = cnt - 1
    endwhile
    call histdel('/', -1)
    let @/ = save    " restore last search pattern
endfun

xnoremap <buffer> ?? <Esc>'<yyP"_C/*<Esc>'>yyp"_C*/<Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<
