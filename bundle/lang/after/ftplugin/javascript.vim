nnoremap <buffer> <leader>g I// <Esc>A //<Esc>yyp0llv$hhhr-yykPjj

if exists(':Tagit') == 2
  inoremap <buffer> <Esc> <Esc>:Tagit<CR>
endif

nnoremap <silent> <buffer> ]] :call functions#Custom_jump('/^function')<cr>
nnoremap <silent> <buffer> [[ :call functions#Custom_jump('?^function')<cr>
nnoremap <silent> <buffer> ]m :call functions#Custom_jump('/^\s*function')<cr>
nnoremap <silent> <buffer> [m :call functions#Custom_jump('?^\s*function')<cr>

xnoremap <buffer> ?? <Esc>'<yyP"_C/*<Esc>'>yyp"_C*/<Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<
