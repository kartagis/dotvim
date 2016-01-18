" better incremental search
function! incsearch#BetterIncSearch(key)
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
