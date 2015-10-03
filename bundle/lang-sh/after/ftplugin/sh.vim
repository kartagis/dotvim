nnoremap <buffer> ,g I# <Esc>A #<Esc>yyp0lv$hhr-yykPjj

call system("compgen -c > ~/shellcmd.txt")

set complete+=k~/shellcmd.txt
