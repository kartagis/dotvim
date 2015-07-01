""""""""""""""""""""""
" EXPERIMENTAL STUFF "
""""""""""""""""""""""
" available keys for , mappings: a c e    jklmno qr  u wxyz
"                                A CDE GHIJKLMNOPQR  U WXYZ

" redirect the output of a Vim command into a scratch buffer
function! Redir(cmd)
    redir => output
    execute a:cmd
    redir END
    vnew
    setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile
    call setline(1, split(output, "\n"))
endfunction

command! -nargs=1 Redir silent call Redir(<f-args>)

" ===========================================================================

" open a scratch buffer
command! SC vnew | setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile

" ===========================================================================

" remove arguments on the command-line
cnoremap <C-k> <C-\>esplit(getcmdline(), " ")[0]<CR><Space>

" ===========================================================================

" cycle common words
function! Cycle()
    let words = [
                \ ["TRUE", "FALSE"],
                \ ["True", "False"],
                \ ["true", "false"],
                \ ["top", "right", "bottom", "left", "center"],
                \ ["none", "block", "inline-block"],
                \ ["capitalize", "uppercase", "lowercase", "none"],
                \ ["margin-top", "margin-right", "margin-bottom", "margin-left"],
                \ ["padding-top", "padding-right", "padding-bottom", "padding-left"],
                \ ["padding", "margin"],
                \ ["border-top", "border-right", "border-bottom", "border-left"],
                \ ["first", "last"],
                \ ["||", "&&"],
                \ ["gif", "jpg", "png"],
                \ ["slow", "fast"]
                \ ]
    if exists("g:cycle_words")
        let words += g:cycle_words
    endif
    if exists("b:cycle_words")
        let words += b:cycle_words
    endif
    let current_word = expand("<cword>")
    let new_word = ""
    for pair in words
        for word in pair
            if current_word ==# word
                if index(pair, word) < len(pair) - 1
                    let new_word = pair[index(pair, word) + 1]
                elseif index(pair, word) == len(pair) - 1
                    let new_word = pair[0]
                endif
            endif
        endfor
    endfor
    if new_word != ""
        execute 'normal "_ciw' . new_word
    else
        return
    endif
endfunction

nnoremap cy :call Cycle()<CR>

" ===========================================================================

" quick :s
nnoremap gS :%s/
xnoremap gS :%s/
nnoremap gs :s/
xnoremap gs :s/

" ===========================================================================

" specialized search/replace
" (broken)
nnoremap <Space>f "zyiwm'/{<CR>%V'':s/\<<C-r>z\>/
nnoremap <Space>b "zyiwVi(:s/\<<C-r>z\>/
nnoremap <Space>B "zyiwVi{:s/\<<C-r>z\>/

" ===========================================================================

" search/replace across multiple files
function! Replace(search_pattern, replacement_pattern, ...)
    let search_string = 'ag --nogroup --nocolor --files-with-matches '
    wall
    tabnew
    let t:start_buffer = bufnr('$')
    if a:0 > 0
        silent arglocal `=system(search_string . a:search_pattern . ' ' . a:1)`
    else
        silent arglocal `=system(search_string . a:search_pattern)`
    endif
    noautocmd argdo execute '%s/' . a:search_pattern . '/' . a:replacement_pattern . '/ec'
endfunction

" FIXME: ensure more predictable/consistent behavior
function! Done()
    if exists('t:start_buffer')
        argdo noautocmd write
        execute t:start_buffer . ',' . bufnr('$') . 'bwipeout'
        try
            tabclose
        catch
        endtry
    endif
endfunction

command! -nargs=+ -complete=file_in_path Replace call Replace(<f-args>)
command!                                 Done    call Done()

" ===========================================================================

nnoremap § *``gn<C-g>
inoremap § <C-o>gn<C-g>
xnoremap § <Esc>:let @/ = functions#GetVisualSelection()<CR>gn<C-g>
snoremap <expr> . @.

" ===========================================================================

" quick :g
nmap ,# :g/<C-r><C-w>/#<CR>
nmap ,@ :g//#<Left><Left>

" ===========================================================================

set report=0

" ===========================================================================

command! TD Grep TODO:
command! FM Grep FIXME:

" ===========================================================================

" custom text-object for numerical values
function! Numbers()
    call search('\d\([^0-9\.]\|$\)', 'cW')
    normal v
    call search('\(^\|[^0-9\.]\d\)', 'becW')
endfunction
xnoremap in :<C-u>call Numbers()<CR>
onoremap in :normal vin<CR>

" ===========================================================================

" poor man's Notational Velocity
function! Nv(...)
    if a:0 > 0
        execute "LGrep " . a:1
    else
        tabnew
        lcd ~/Sync/nv/
        Texplore
    endif
endfunction
command! -nargs=? NV call Nv(<f-args>)

" ===========================================================================

" better incremental search
function! BetterIncSearch(key)
    if getcmdtype() == "/" || getcmdtype() == "?"
        if (a:key == "tab" && b:direction == "f") || (a:key == "stab" && b:direction == "b")
            return "\<CR>/\<C-r>/"
        elseif (a:key == "tab" && b:direction == "b") || (a:key == "stab" && b:direction == "f")
            return "\<CR>?\<C-r>/"
        elseif a:key == "ctrlc"
            return "\<Esc>`z"
        endif
    else
        if a:key == "tab"
            return "\<C-z>"
        else
            return "\<S-Tab>"
        endif
    endif
endfunction

nnoremap / :let b:direction = "f"<CR>mz/
nnoremap ? :let b:direction = "b"<CR>mz?

cnoremap <expr> <Tab>   BetterIncSearch("tab")
cnoremap <expr> <S-Tab> BetterIncSearch("stab")
cnoremap <expr> <C-c>   BetterIncSearch("ctrlc")

" ===========================================================================

" scary stuff
nnoremap ' `
