" search/replace across multiple files
function! replace#Replace(search_pattern, replacement_pattern, ...)
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
function! replace#Done()
    if exists('t:start_buffer')
        argdo noautocmd write
        execute t:start_buffer . ',' . bufnr('$') . 'bwipeout'
        try
            tabclose
        catch
        endtry
    endif
endfunction
