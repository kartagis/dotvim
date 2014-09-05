" do something with each item of the location/quickfix list
function qf#DoList(line, cmd)
    let stub = b:isLoc == 1 ? "l" : "c"
    try
        silent lfirst
        while 1
            execute a:cmd
            silent execute a:line == 1 ? stub . "next" : stub . "nfile"
        endwhile
    catch /^Vim\%((\a\+)\)\=:E\%(553\|42\):/
    endtry
endfunction

" ===========================================================================

" filter the current location/quickfix list
function qf#FilterList(pat)
    if b:isLoc == 1
        if !exists("b:locl")
            let b:locl = getloclist(0)
        endif
        call setloclist(0, filter(getloclist(0), "bufname(v:val['bufnr']) =~ a:pat || v:val['text'] =~ a:pat"))
    else
        if !exists("b:qfl")
            let b:qfl = getqflist()
        endif
        call setqflist(filter(getqflist(), "bufname(v:val['bufnr']) =~ a:pat || v:val['text'] =~ a:pat"))
    endif
endfunction

" ===========================================================================

" restore the current location/quickfix list
function qf#RestoreList()
    if b:isLoc == 1
        try
            call setloclist(0, b:locl)
        catch
        endtry
    else
        try
            call setqflist(b:qfl)
        catch
        endtry
    endif
endfunction
