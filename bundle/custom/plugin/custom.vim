""""""""""""""""""""""
" EXPERIMENTAL STUFF "
""""""""""""""""""""""

" redirect the output of a Vim command into a scratch buffer
command! -nargs=1 Redir silent call redir#Redir(<f-args>)

" open a scratch buffer
command! SC vnew | setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile

" remove arguments on the command-line
cnoremap <C-k> <C-\>esplit(getcmdline(), " ")[0]<CR><Space>

" cycle common words
nnoremap cy :call cycle#Cycle()<CR>

" quick :g
nmap ,@ :g/<C-r><C-w>/#<CR>
nmap ,# :g//#<Left><Left>

" specialized search/replace
" (broken)
" nnoremap <Space>f "zyiwm'/{<CR>%V'':s/\<<C-r>z\>/
" nnoremap <Space>b "zyiwVi(:s/\<<C-r>z\>/
" nnoremap <Space>B "zyiwVi{:s/\<<C-r>z\>/

" search/replace across multiple files
command! -nargs=+ -complete=file_in_path Replace call replace#Replace(<f-args>)
command!                                 Done    call replace#Done()

" nnoremap § *``gn<C-g>
" inoremap § <C-o>gn<C-g>
" xnoremap § <Esc>:let @/ = visual#GetSelection()<CR>gn<C-g>
" snoremap <expr> . @.

set report=0

command! TD Grep TODO
command! FM Grep FIXME

" better incremental search
" nnoremap / :<C-u>let b:direction = "f"<CR>mz/
" onoremap / :<C-u>let b:direction = "f"<CR>mzgv/
" nnoremap ? :<C-u>let b:direction = "b"<CR>mz?
" onoremap ? :<C-u>let b:direction = "b"<CR>mzgv?

" cnoremap <expr> <Tab>   incsearch#BetterIncSearch("tab")
" cnoremap <expr> <S-Tab> incsearch#BetterIncSearch("stab")
" cnoremap <expr> <C-c>   incsearch#BetterIncSearch("ctrlc")

" smarter incsearch
cnoremap <expr> <Tab>   getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>/<C-r>/" : "<C-z>"
cnoremap <expr> <S-Tab> getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>?<C-r>/" : "<S-Tab>"

" line text-objects
xnoremap il g_o0
onoremap il :<C-u>normal vil<CR>
xnoremap al $o0
onoremap al :<C-u>normal val<CR>

" buffer text-object
" xnoremap i% :<C-u>let z = @/\|1;/^./kz<CR>G??<CR>:let @/ = z<CR>V'z
" onoremap i% :<C-u>normal vi%<CR>
" xnoremap a% GoggV
" onoremap a% :<C-u>normal vi%<CR>

" block comment text-object
xnoremap a? ?<C-r>=split(&commentstring, "%s")[0]<CR><CR>o/<C-r>=split(&commentstring, "%s")[1]<CR><CR>
onoremap a? :<C-u>normal va?<CR>
xnoremap i? ?<C-r>=split(&commentstring, "%s")[0]<CR>?+<CR>o/<C-r>=split(&commentstring, "%s")[1]<CR>/-<CR>
onoremap i? :<C-u>normal vi?<CR>

" brace expansion on the cheap
inoremap (<CR> (<CR>)<Esc>O
inoremap {<CR> {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O
inoremap {, {<CR>},<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap [; [<CR>];<Esc>O
inoremap [, [<CR>],<Esc>O

" like <C-r><C-w> for lines
cnoremap <C-r><C-l> <C-r>=getline('.')<CR>

" insert date
iabbrev <expr> dts system("LANG=en_EN date\|tr -d '\n'")

" search highlight for vim-cool
" set hls

" ultra-light aligning
" function! Align()
" 	'<,'>!column -t|sed 's/  \(\S\)/ \1/g'
" 	normal gv=
" endfunction
" xnoremap <silent> <F5> :<C-u>silent call Align()<CR>

" foo\<C-r>=2*0bar
" 8

" function! Foo()
"     let cnt = v:count1
"     let old_reg = getreg("v")
"     let raw_number = getreg("v")
"     call search('\d\([^0-9\.]\|$\)', 'cW')
"     normal v
"     call search('\(^\|[^0-9\.]\d\)', 'becW')
"     normal "vygv
"     execute "normal c" . cnt * @v
"     call setreg("v", old_reg)
" endfunction

" nnoremap <F5> :<C-u>call Foo()<CR>
