" vim-qf - Tame the quickfix window
" Maintainer:	romainl <romainlafourcade@gmail.com>
" Version:	0.0.2
" License:	Vim License (see :help license)
" Location:	autoload/qf.vim
" Website:	https://github.com/romainl/vim-qf
"
" See qf.txt for help.  This can be accessed by doing:
"
" :helptags ~/.vim/doc
" :help qf

let s:save_cpo = &cpo
set cpo&vim

" wrap around
function qf#WrapCommand(direction, prefix)
    if a:direction == "up"
        try
            execute a:prefix . "previous"
        catch /^Vim\%((\a\+)\)\=:E553/
            execute a:prefix . "last"
        catch /^Vim\%((\a\+)\)\=:E\%(776\|42\):/
        endtry
    else
        try
            execute a:prefix . "next"
        catch /^Vim\%((\a\+)\)\=:E553/
            execute a:prefix . "first"
        catch /^Vim\%((\a\+)\)\=:E\%(776\|42\):/
        endtry
    endif
endfunction

" do something with each entry
function qf#DoList(line, cmd)
    if exists("b:isLoc")
        let stub = b:isLoc == 1 ? "l" : "c"
    else
        let stub = "c"
    endif
    try
      silent execute stub . "first"
        while 1
            execute a:cmd
            silent execute a:line == 1 ? stub . "next" : stub . "nfile"
        endwhile
    catch /^Vim\%((\a\+)\)\=:E\%(553\|42\):/
    endtry
endfunction

" filter the current list
function qf#FilterList(pat)
    if exists("b:isLoc")
        if b:isLoc == 1
            if !exists("b:locl")
                call setwinvar(winnr("#"), "locl", getloclist(0))
                call setwinvar(winnr("#"), "qf_title", w:quickfix_title)
            endif
            call setloclist(0, filter(getloclist(0), "bufname(v:val['bufnr']) =~ a:pat || v:val['text'] =~ a:pat"), "r")
            let w:quickfix_title = getwinvar(winnr("#"), "qf_title") . " [filtered]"
        else
            if !exists("b:qfl")
                let g:qfl = getqflist()
                let g:qf_title = w:quickfix_title
            endif
            call setqflist(filter(getqflist(), "bufname(v:val['bufnr']) =~ a:pat || v:val['text'] =~ a:pat"), "r")
            let w:quickfix_title = g:qf_title . " [filtered]"
        endif
    endif
endfunction

" restore the original list
function qf#RestoreList()
    if exists("b:isLoc")
        if b:isLoc == 1 && len(getwinvar(winnr("#"), "locl")) > 0
            call setloclist(0, getwinvar(winnr("#"), "locl"), "r")
            let w:quickfix_title = getwinvar(winnr("#"), "qf_title")
        elseif b:isLoc != 1 && len(getwinvar(winnr("#"), "locl")) == 0
            call setqflist(g:qfl, "r")
            let w:quickfix_title = g:qf_title
        endif
    endif
endfunction

let &cpo = s:save_cpo
