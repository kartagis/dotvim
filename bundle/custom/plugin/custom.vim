""""""""""""""""""""""
" EXPERIMENTAL STUFF "
""""""""""""""""""""""

" redirect the output of a Vim command into a scratch buffer
command! -nargs=1 Redir silent call custom#Redir(<f-args>)

" open a scratch buffer
command! SC vnew | setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile

" remove arguments on the command-line
cnoremap <C-k> <C-\>esplit(getcmdline(), " ")[0]<CR><Space>

" cycle common words
nnoremap cy :call custom#Cycle()<CR>

" quick :s
nnoremap gS :%s/
nnoremap gs :s/
xnoremap gs :s/

" quick :g
nmap ,@ :g/<C-r><C-w>/#<CR>
nmap ,# :g//#<Left><Left>

" specialized search/replace
" (broken)
" nnoremap <Space>f "zyiwm'/{<CR>%V'':s/\<<C-r>z\>/
" nnoremap <Space>b "zyiwVi(:s/\<<C-r>z\>/
" nnoremap <Space>B "zyiwVi{:s/\<<C-r>z\>/

" search/replace across multiple files
command! -nargs=+ -complete=file_in_path Replace call custom#Replace(<f-args>)
command!                                 Done    call custom#Done()

" nnoremap § *``gn<C-g>
" inoremap § <C-o>gn<C-g>
" xnoremap § <Esc>:let @/ = custom#GetVisualSelection()<CR>gn<C-g>
" snoremap <expr> . @.

set report=0

command! TD Grep TODO:
command! FM Grep FIXME:

xnoremap in :<C-u>call custom#VisualNumbers()<CR>
onoremap in :normal vin<CR>

" better incremental search
" nnoremap / :<C-u>let b:direction = "f"<CR>mz/
" onoremap / :<C-u>let b:direction = "f"<CR>mzgv/
" nnoremap ? :<C-u>let b:direction = "b"<CR>mz?
" onoremap ? :<C-u>let b:direction = "b"<CR>mzgv?

" cnoremap <expr> <Tab>   custom#BetterIncSearch("tab")
" cnoremap <expr> <S-Tab> custom#BetterIncSearch("stab")
" cnoremap <expr> <C-c>   custom#BetterIncSearch("ctrlc")

" universal opposite of J
function! BreakHere()
    s/^\(\s*\)\(.\{-}\)\(\s*\)\(\%#\)\(\s*\)\(.*\)/\1\2\r\1\4\6
    call histdel("/", -1)
endfunction

" TODO for all
" autocmd BufWinEnter * call matchadd("Todo", '\(TODO\|HACK\)')
