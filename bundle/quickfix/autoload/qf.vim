" wrap :cnext/:cprevious and :lnext/:lprevious
function qf#WrapCommand(direction, prefix)
    if a:direction == "up"
        try
            execute a:prefix . "previous"
        catch /^Vim\%((\a\+)\)\=:E553/
            execute a:prefix . "last"
        catch /^Vim\%((\a\+)\)\=:E\%(776\|42\):/
        endtry
    elseif a:direction == "down"
        try
            execute a:prefix . "next"
        catch /^Vim\%((\a\+)\)\=:E553/
            execute a:prefix . "first"
        catch /^Vim\%((\a\+)\)\=:E\%(776\|42\):/
        endtry
    endif
endfunction

" ===========================================================================

" do something with each entry
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

" filter the current list
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

" restore the current list
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
