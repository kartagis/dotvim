" tries to make <CR> a little smarter in insert mode:
" - expands {}, [], (), <tag></tag> 'correctly'
" - removes empty comment marker
" - more?
function! icr#ICR()
    " specific case: beware of the cmdline window
    if &buftype ==# "quickfix"
        return "\<CR>"
    endif
    " specific case: <CR><CR> to get out of commenting
    if getline(".") =~ '^\s*\(\*\|//\|#\|"\)\s*$'
        return "\<C-u>"
    endif
    " generic case
    let previous = getline(".")[col(".")-2]
    let next     = getline(".")[col(".")-1]
    if previous ==# ">"
        return <SID>TagExpander(next)
    else
        return "\<CR>"
    endif
endfunction

function! s:TagExpander(next)
    let thisline = getline(".")
    if a:next ==# "<" && thisline[col(".")] ==# "/"
        if thisline[searchpos("<", "bnW")[1]] ==# "/" || thisline[searchpos("<", "bnW")[1]] !=# thisline[col(".") + 1]
            return "\<CR>"
        else
            return "\<CR>\<C-o>==O"
        endif
    else
        return "\<CR>"
    endif
endfunction
