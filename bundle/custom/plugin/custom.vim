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

" show ]I, [I, ]D, [D, :ilist and :dlist results in the quickfix window.
function! List(command, selection, start_at_cursor, ...)
    let excmd   = a:command . "list"
    let normcmd = toupper(a:command)

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
        silent! execute (a:start_at_cursor ? '+,$' : '') . excmd . ' /' . search_pattern
        redir END
    else
        redir => output
        silent! execute 'normal! ' . (a:start_at_cursor ? ']' : '[') . normcmd
        redir END
    endif
    let lines = split(output, '\n')
    if lines[0] =~ '^Error detected'
        echomsg 'Could not find "' . (a:selection ? search_pattern : expand("<cword>")) . '".'
        return
    endif
    let filename   = ""
    let qf_entries = []
    for line in lines
        if line =~ '^\S'
            let filename = line
        else
            call add(qf_entries, {"filename" : filename, "lnum" : split(line)[1], "text" : join(split(line)[2:-1])})
        endif
    endfor
    call setqflist(qf_entries)
    cwindow
endfunction

nnoremap <silent> [I :call List("i", 0, 0)<CR>
nnoremap <silent> ]I :call List("i", 0, 1)<CR>
xnoremap <silent> [I :<C-u>call List("i", 1, 0)<CR>
xnoremap <silent> ]I :<C-u>call List("i", 1, 1)<CR>

command! -nargs=1 Ilist call List("i", 1, 0, <f-args>)

nnoremap <silent> [D :call List("d", 0, 0)<CR>
nnoremap <silent> ]D :call List("d", 0, 1)<CR>
xnoremap <silent> [D :<C-u>call List("d", 1, 0)<CR>
xnoremap <silent> ]D :<C-u>call List("d", 1, 1)<CR>

command! -nargs=1 Dlist call List("d", 1, 0, <f-args>)

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
                \ ["border-top", "border-right", "border-bottom", "border-left"],
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

set showbreak=»»»\ 

" ===========================================================================

nnoremap § *``gn<C-g>
inoremap § <C-o>gn<C-g>
xnoremap § <Esc>:let @/ = functions#GetVisualSelection()<CR>gn<C-g>
snoremap <expr> . @.

" ===========================================================================

nmap ,# :g/<C-r><C-w>/#<CR>
nmap ,@ :g//#<Left><Left>

" ===========================================================================

" Enable syntax highlighting when buffers are displayed in a window through
" :argdo and :bufdo, which disable the Syntax autocmd event to speed up
" processing.
" http://stackoverflow.com/a/12491893/546861
augroup EnableSyntaxHighlighting
    autocmd!
    autocmd BufWinEnter,WinEnter * nested if exists('syntax_on') && ! exists('b:current_syntax') && ! empty(&l:filetype) && index(split(&eventignore, ','), 'Syntax') == -1 | syntax enable | endif
    autocmd BufRead * if exists('syntax_on') && exists('b:current_syntax') && ! empty(&l:filetype) && index(split(&eventignore, ','), 'Syntax') != -1 | unlet! b:current_syntax | endif
augroup END

" ===========================================================================

nnoremap / mz/
nnoremap ? mz?
cnoremap <expr> <C-c>   getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<Esc>`z" : "<Esc>"

