" make list-like commands more intuitive
function! ccr#CCR()
    let cmdline = getcmdline()
    if cmdline =~ '\C^ls'
        " like :ls but prompts for a buffer command
        return "\<CR>:b"
    elseif cmdline =~ '/#$'
        " like :g//# but prompts for a command
        return "\<CR>:"
    elseif cmdline =~ '\v\C^(dli|il)'
        " like :dlist or :ilist but prompts for a count for :djump or :ijump
        return "\<CR>:" . cmdline[0] . "jump  " . split(cmdline, " ")[1] . "\<S-Left>\<Left>"
    elseif cmdline =~ '\v\C^(cli|lli)'
        " like :clist or :llist but prompts for an error/location number
        return "\<CR>:silent " . repeat(cmdline[0], 2) . "\<Space>"
    elseif cmdline =~ '\C^old'
        " like :oldfiles but prompts for an old file to edit
        return "\<CR>:edit #<"
    els
        return "\<CR>"
    endif
endfunction
