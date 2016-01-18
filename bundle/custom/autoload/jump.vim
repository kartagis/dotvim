" adapted from $VIMRUNTIME/ftplugin/python.vim
function! jump#Jump(motion) range
    let cnt = v:count1
    let save = @/
    mark '
    while cnt > 0
        silent! execute a:motion
        let cnt = cnt - 1
    endwhile
    call histdel('/', -1)
    let @/ = save
endfunction
