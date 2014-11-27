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

" show ]I and [I results in the quickfix window.
function! Ilist(selection, start_at_cursor, ...)
    if a:selection
        if len(a:1) > 0
            let search_pattern = a:1
        else
            let old_reg = @v
            normal! gv"vy
            let search_pattern = substitute(escape(@v, '\/.*$^~[]'), '\\n', '\\n', 'g')
            let @v = old_reg
        endif
        redir => output
        silent! execute (a:start_at_cursor ? '+,$' : '') . 'ilist /' . search_pattern
        redir END
    else
        redir => output
        silent! execute 'normal! ' . (a:start_at_cursor ? ']' : '[') . "I"
        redir END
    endif
    let lines = split(output, '\n')
    if lines[0] =~ '^Error detected'
        echomsg 'Could not find "' . (a:selection ? search_pattern : expand("<cword>")) . '".'
        return
    endif
    let [filename, line_info] = [lines[0], lines[1:-1]]
    "turn the :ilist output into a quickfix dictionary
    let qf_entries = map(line_info, "{
                \ 'filename': filename,
                \ 'lnum': split(v:val)[1],
                \ 'text': getline(split(v:val)[1])
                \ }")
    call setqflist(qf_entries)
    cwindow
endfunction

nnoremap <silent> [I :call Ilist(0, 0)<CR>
nnoremap <silent> ]I :call Ilist(0, 1)<CR>
xnoremap <silent> [I :<C-u>call Ilist(1, 0)<CR>
xnoremap <silent> ]I :<C-u>call Ilist(1, 1)<CR>

command! -nargs=1 Ilist call Ilist(1, 0, <f-args>)

" ===========================================================================

" remove arguments on the command-line
cnoremap <C-k> <C-\>esplit(getcmdline(), " ")[0]<CR><Space>

" =======================================================================C====

" smarter <CR> after a few commands
cnoremap <expr> <CR> getcmdline() =~ "^ls" \|\| getcmdline() =~ "^dli" \|\| getcmdline() =~ "^il" \|\| getcmdline() =~ "^ps" \|\| getcmdline() =~ "#$" ? "\<CR>:" : "\<CR>"
" FIXME
" cnoremap <expr> <CR> getcmdline() =~ '^\(dli\|il\|ls\|ps\)' ? "\<CR>:" : "\<CR>"
" cnoremap <expr> <CR> getcmdline() =~ '\v(^(ls\|dli\|il\|ps))\|#$' ? "\<CR>:" : "\<CR>"
" cnoremap <expr> <CR> getcmdline() =~ '\(^\(ls\\|dli\\|il\\|ps\)\)\\|#$' ? "\<CR>:" : "\<CR>"
" cnoremap <expr> <CR> getcmdline() =~ "\\(^\\(ls\\\|dli\\\|il\\\|ps\\)\\)\\\|#$" ? "\<CR>:" : "\<CR>"

" ===========================================================================

" modify the behaviour of <Tab> and <S-Tab> on the command-line
" mainly for incsearch
function! CmdLineTab()
    if getcmdtype() == "/"
        return "\<CR>/\<C-r>/"
    elseif getcmdtype() == "?"
        return "\<CR>?\<C-r>/"
    else
        return "\<C-z>"
    endif
endfunction

function! CmdLineShiftTab()
    if getcmdtype() == "/"
        return "\<CR>?\<C-r>/"
    elseif getcmdtype() == "?"
        return "\<CR>/\<C-r>/"
    else
        return "\<S-Tab>"
    endif
endfunction

cnoremap <expr> <Tab>   CmdLineTab()
cnoremap <expr> <S-Tab> CmdLineShiftTab()

" ===========================================================================

" cycle common words
function! Cycle()
    let words = [
                \ ["TRUE", "FALSE"],
                \ ["True", "False"],
                \ ["true", "false"],
                \ ["top", "right", "bottom", "left", "center"],
                \ ["none", "block"],
                \ ["first", "last"],
                \ ["||", "&&"],
                \ ["gif", "jpg", "png"]
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

nnoremap gs :%s//c<Left><Left>
xnoremap gs :s//c<Left><Left>

" ===========================================================================

" specialized search/replace
nnoremap <Space>f "zyiw]M[MV%:s/\<<C-r>z\>/
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

set showbreak=»»»\ 

" ===========================================================================

set viminfo+='33

nnoremap ,me :oldfiles<CR>:edit #<
nnoremap ,ms :oldfiles<CR>:split #<
nnoremap ,mv :oldfiles<CR>:vsplit #<
nnoremap ,mt :oldfiles<CR>:tabedit #<

