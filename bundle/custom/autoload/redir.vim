" redirect the output of a Vim command into a scratch buffer
function! redir#Redir(cmd)
    redir => output
    execute a:cmd
    redir END
    vnew
    setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile
    call setline(1, split(output, "\n"))
endfunction
