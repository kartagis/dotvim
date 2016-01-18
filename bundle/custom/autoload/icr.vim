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
    if previous ==# "{"
        return icr#PairExpander(previous, "}", next)
    elseif previous ==# "["
        return icr#PairExpander(previous, "]", next)
    elseif previous ==# "("
        return icr#PairExpander(previous, ")", next)
    elseif previous ==# ">"
        return icr#TagExpander(next)
    else
        return "\<CR>"
    endif
endfunction

function! icr#PairExpander(left, right, next)
    let pair_position = []
    if a:left == "["
        let pair_position = searchpairpos('\' . a:left, "", '\' . a:right, "Wn")
    else
        let pair_position = searchpairpos(a:left, "", a:right, "Wn")
    endif
    if a:next !=# a:right && pair_position[0] == 0
        return "\<CR>" . a:right . "\<C-o>==O"
    elseif a:next !=# a:right && pair_position[0] != 0 && indent(pair_position[0]) != indent(".")
        return "\<CR>" . a:right . "\<C-o>==O"
    elseif a:next ==# a:right
        return "\<CR>\<C-o>==O"
    else
        return "\<CR>"
    endif
endfunction

function! icr#TagExpander(next)
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
