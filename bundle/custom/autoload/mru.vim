" simplistic MRU
function! mru#MRUComplete(ArgLead, CmdLine, CursorPos)
    let my_oldfiles = filter(copy(v:oldfiles), 'v:val =~ a:ArgLead')
    return my_oldfiles
endfunction

function! mru#MRU(command, arg)
    if a:command == "tabedit"
        execute a:command . " " . a:arg . "\|lcd %:p:h"
    else
        execute a:command . " " . a:arg
    endif
endfunction
