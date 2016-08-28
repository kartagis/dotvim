" farbkreis.vim -- Vim color scheme.
" Author:      Romain Lafourcade (romainlafourcade@gmail.com)
" Description: foo bar baz

hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'farbkreis'

if &t_Co >= 256 || has('gui_running')
    hi Normal ctermbg=59 ctermfg=15 cterm=NONE guibg=#5f5f5f guifg=#ffffff gui=NONE
    hi NonText ctermbg=59 ctermfg=102 cterm=NONE guibg=#5f5f5f guifg=#878787 gui=NONE
    hi Comment ctermbg=NONE ctermfg=102 cterm=NONE guibg=NONE guifg=#878787 gui=NONE
    hi Error ctermbg=15 ctermfg=180 cterm=reverse guibg=#ffffff guifg=#dfaf87 gui=reverse
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi Constant ctermbg=NONE ctermfg=180 cterm=NONE guibg=NONE guifg=#dfaf87 gui=NONE
    hi Identifier ctermbg=NONE ctermfg=187 cterm=NONE guibg=NONE guifg=#dfdfaf gui=NONE
    hi PreProc ctermbg=NONE ctermfg=66 cterm=NONE guibg=NONE guifg=#5f8787 gui=NONE
    hi Special ctermbg=NONE ctermfg=187 cterm=NONE guibg=NONE guifg=#dfdfaf gui=NONE
    hi Statement ctermbg=NONE ctermfg=132 cterm=NONE guibg=NONE guifg=#af5f87 gui=NONE
    hi String ctermbg=NONE ctermfg=24 cterm=NONE guibg=NONE guifg=#005f87 gui=NONE
    hi Type ctermbg=NONE ctermfg=139 cterm=NONE guibg=NONE guifg=#af87af gui=NONE

    set background=dark
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=8 ctermfg=15 cterm=NONE
    hi NonText ctermbg=8 ctermfg=8 cterm=NONE
    hi Comment ctermbg=NONE ctermfg=8 cterm=NONE
    hi Error ctermbg=15 ctermfg=3 cterm=reverse
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Constant ctermbg=NONE ctermfg=3 cterm=NONE
    hi Identifier ctermbg=NONE ctermfg=11 cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=14 cterm=NONE
    hi Special ctermbg=NONE ctermfg=11 cterm=NONE
    hi Statement ctermbg=NONE ctermfg=5 cterm=NONE
    hi String ctermbg=NONE ctermfg=6 cterm=NONE
    hi Type ctermbg=NONE ctermfg=13 cterm=NONE

    set background=dark
endif

" Generated with RNB (https://gist.github.com/romainl/5cd2f4ec222805f49eca)
