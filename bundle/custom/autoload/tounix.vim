" DOS to UNIX re-encoding
function! tounix#ToUnix()
    let b:winview = winsaveview()
    silent update
    silent e ++ff=dos
    silent setlocal ff=unix
    silent w
    if(exists('b:winview'))
        call winrestview(b:winview)
    endif
endfunction
