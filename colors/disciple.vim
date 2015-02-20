" 'disciple.vim' -- Vim color scheme.
" Maintainer:   Romain Lafourcade (romainlafourcade@gmail.com)

" MADE-UP NAME             HEX        XTERM  ANSI
" ==================================================
" almost white             #dadada    253
" very light grey          #d0d0d0    252    background color
" lighter grey             #c6c6c6    251
" slightly lighter grey    #b2b2b2    249
" light grey               #9e9e9e    247
" medium grey              #8a8a8a    245
" almost black             #3a3a3a    237    foreground color
" black                    #000000    16     0
" beige                    #afaf87    144
" ocre                     #87875f    101
" light pink               #af87af    139
" pink                     #875f87    96
" light red                #af8787    138
" red                      #af5f5f    131
" light brown              #af875f    137
" brown                    #875f00    94
" turquoise                #5fafaf    73
" orange                   #ff8700    208
" purple                   #8787af    103
" blue                     #005faf    25

hi clear

if exists('syntax_on')
  syntax reset

endif

let colors_name = 'disciple'

if &t_Co >= 256 || has('gui_running')
  hi Normal           ctermbg=252  ctermfg=237  guibg=#d0d0d0 guifg=#3a3a3a cterm=NONE           gui=NONE

  set background=light

  hi Comment          ctermbg=NONE ctermfg=247  guibg=NONE    guifg=#9e9e9e cterm=NONE           gui=NONE
  hi Constant         ctermbg=NONE ctermfg=33   guibg=NONE    guifg=#0087ff cterm=NONE           gui=NONE
  hi Error            ctermbg=NONE ctermfg=73   guibg=NONE    guifg=#5fafaf cterm=reverse        gui=reverse
  hi Identifier       ctermbg=NONE ctermfg=137  guibg=NONE    guifg=#af875f cterm=NONE           gui=NONE
  hi Ignore           ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
  hi PreProc          ctermbg=NONE ctermfg=95   guibg=NONE    guifg=#875f5f cterm=NONE           gui=NONE
  hi Special          ctermbg=NONE ctermfg=96   guibg=NONE    guifg=#875f87 cterm=NONE           gui=NONE
  hi Statement        ctermbg=NONE ctermfg=180  guibg=NONE    guifg=#dfaf87 cterm=NONE           gui=NONE
  hi String           ctermbg=NONE ctermfg=139  guibg=NONE    guifg=#af87af cterm=NONE           gui=NONE
  hi Todo             ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=reverse        gui=reverse
  hi Type             ctermbg=NONE ctermfg=144  guibg=NONE    guifg=#afaf87 cterm=NONE           gui=NONE
  hi Underlined       ctermbg=NONE ctermfg=95   guibg=NONE    guifg=#875f5f cterm=underline      gui=underline

  hi LineNr           ctermbg=253  ctermfg=245  guibg=#dadada guifg=#8a8a8a cterm=NONE           gui=NONE
  hi NonText          ctermbg=NONE ctermfg=247  guibg=NONE    guifg=#9e9e9e cterm=NONE           gui=NONE

  hi Pmenu            ctermbg=249  ctermfg=237  guibg=#b2b2b2 guifg=#3a3a3a cterm=NONE           gui=NONE
  hi PmenuSbar        ctermbg=247  ctermfg=NONE guibg=#9e9e9e guifg=NONE    cterm=NONE           gui=NONE
  hi PmenuSel         ctermbg=95   ctermfg=252  guibg=#875f5f guifg=#d0d0d0 cterm=NONE           gui=NONE
  hi PmenuThumb       ctermbg=95   ctermfg=95   guibg=#875f5f guifg=#875f5f cterm=NONE           gui=NONE

  hi ErrorMsg         ctermbg=73   ctermfg=252  guibg=#5fafaf guifg=#d0d0d0 cterm=NONE           gui=NONE
  hi ModeMsg          ctermbg=139  ctermfg=252  guibg=#af87af guifg=#d0d0d0 cterm=NONE           gui=NONE
  hi MoreMsg          ctermbg=NONE ctermfg=95   guibg=NONE    guifg=#875f5f cterm=NONE           gui=NONE
  hi Question         ctermbg=NONE ctermfg=139  guibg=NONE    guifg=#af87af cterm=NONE           gui=NONE
  hi WarningMsg       ctermbg=NONE ctermfg=73   guibg=NONE    guifg=#5fafaf cterm=NONE           gui=NONE

  hi TabLine          ctermbg=249  ctermfg=60   guibg=#b2b2b2 guifg=#5f5f87 cterm=NONE           gui=NONE
  hi TabLineFill      ctermbg=249  ctermfg=249  guibg=#b2b2b2 guifg=#b2b2b2 cterm=NONE           gui=NONE
  hi TabLineSel       ctermbg=60   ctermfg=252  guibg=#5f5f87 guifg=#d0d0d0 cterm=NONE           gui=NONE

  hi Cursor           ctermbg=245  ctermfg=NONE guibg=#8a8a8a guifg=NONE    cterm=NONE           gui=NONE
  hi CursorColumn     ctermbg=251  ctermfg=NONE guibg=#c6c6c6 guifg=NONE    cterm=NONE           gui=NONE
  hi CursorLine       ctermbg=251  ctermfg=NONE guibg=#c6c6c6 guifg=NONE    cterm=NONE           gui=NONE
  hi CursorLineNr     ctermbg=251  ctermfg=73   guibg=#c6c6c6 guifg=#5fafaf cterm=NONE           gui=NONE

  hi helpLeadBlank    ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
  hi helpNormal       ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE

  hi StatusLine       ctermbg=60   ctermfg=252  guibg=#5f5f87 guifg=#d0d0d0 cterm=NONE           gui=NONE
  hi StatusLineNC     ctermbg=249  ctermfg=60   guibg=#b2b2b2 guifg=#5f5f87 cterm=NONE           gui=italic

  hi Visual           ctermbg=180  ctermfg=252  guibg=#dfaf87 guifg=#d0d0d0 cterm=NONE           gui=NONE
  hi VisualNOS        ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=underline      gui=underline

  hi FoldColumn       ctermbg=253  ctermfg=245  guibg=#dadada guifg=#8a8a8a cterm=NONE           gui=NONE
  hi Folded           ctermbg=253  ctermfg=245  guibg=#dadada guifg=#8a8a8a cterm=NONE           gui=NONE

  hi VertSplit        ctermbg=249  ctermfg=249  guibg=#b2b2b2 guifg=#b2b2b2 cterm=NONE           gui=NONE
  hi WildMenu         ctermbg=180  ctermfg=252  guibg=#dfaf87 guifg=#d0d0d0 cterm=NONE           gui=NONE

  hi Function         ctermbg=NONE ctermfg=147  guibg=NONE    guifg=#afafff cterm=NONE           gui=NONE
  hi SpecialKey       ctermbg=NONE ctermfg=247  guibg=NONE    guifg=#9e9e9e cterm=NONE           gui=NONE
  hi Title            ctermbg=NONE ctermfg=16   guibg=NONE    guifg=#000000 cterm=NONE           gui=NONE

  hi DiffAdd          ctermbg=139  ctermfg=252  guibg=#af87af guifg=#d0d0d0 cterm=NONE           gui=NONE
  hi DiffChange       ctermbg=60   ctermfg=252  guibg=#5f5f87 guifg=#d0d0d0 cterm=NONE           gui=NONE
  hi DiffDelete       ctermbg=73   ctermfg=252  guibg=#5fafaf guifg=#d0d0d0 cterm=NONE           gui=NONE
  hi DiffText         ctermbg=144  ctermfg=252  guibg=#afaf87 guifg=#d0d0d0 cterm=NONE           gui=NONE

  hi IncSearch        ctermbg=73   ctermfg=252  guibg=#5fafaf guifg=#d0d0d0 cterm=NONE           gui=NONE
  hi Search           ctermbg=139  ctermfg=252  guibg=#af87af guifg=#d0d0d0 cterm=NONE           gui=NONE

  hi Directory        ctermbg=NONE ctermfg=73   guibg=NONE    guifg=#5fafaf cterm=NONE           gui=NONE
  hi MatchParen       ctermbg=NONE ctermfg=147  guibg=NONE    guifg=#afafff cterm=NONE           gui=NONE

  hi SpellBad         ctermbg=NONE ctermfg=73   guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#5fafaf
  hi SpellCap         ctermbg=NONE ctermfg=73   guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#5fafaf
  hi SpellLocal       ctermbg=NONE ctermfg=96   guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#875f87
  hi SpellRare        ctermbg=NONE ctermfg=33   guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#0087ff

  hi ColorColumn      ctermbg=73   ctermfg=NONE guibg=#5fafaf guifg=NONE    cterm=NONE           gui=NONE
  hi signColumn       ctermbg=253  ctermfg=245  guibg=#dadada guifg=#8a8a8a cterm=NONE           gui=NONE
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
  set t_Co=16

  hi Normal           ctermbg=NONE        ctermfg=15          cterm=NONE

  set background=light

  hi Comment          ctermbg=NONE        ctermfg=8           cterm=NONE
  hi Constant         ctermbg=NONE        ctermfg=9           cterm=NONE
  hi Function         ctermbg=NONE        ctermfg=11          cterm=NONE
  hi Identifier       ctermbg=NONE        ctermfg=4           cterm=NONE
  hi PreProc          ctermbg=NONE        ctermfg=6           cterm=NONE
  hi Special          ctermbg=NONE        ctermfg=2           cterm=NONE
  hi Statement        ctermbg=NONE        ctermfg=12          cterm=NONE
  hi String           ctermbg=NONE        ctermfg=10          cterm=NONE
  hi Todo             ctermbg=NONE        ctermfg=NONE        cterm=reverse
  hi Type             ctermbg=NONE        ctermfg=13          cterm=NONE

  hi Error            ctermbg=NONE        ctermfg=1           cterm=reverse
  hi Ignore           ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi Underlined       ctermbg=NONE        ctermfg=6           cterm=underline

  hi LineNr           ctermbg=0           ctermfg=7           cterm=NONE
  hi NonText          ctermbg=NONE        ctermfg=8           cterm=NONE

  hi Pmenu            ctermbg=8           ctermfg=15          cterm=NONE
  hi PmenuSbar        ctermbg=7           ctermfg=NONE        cterm=NONE
  hi PmenuSel         ctermbg=6           ctermfg=0           cterm=NONE
  hi PmenuThumb       ctermbg=6           ctermfg=NONE        cterm=NONE

  hi ErrorMsg         ctermbg=1           ctermfg=0           cterm=NONE
  hi ModeMsg          ctermbg=2           ctermfg=0           cterm=NONE
  hi MoreMsg          ctermbg=NONE        ctermfg=6           cterm=NONE
  hi Question         ctermbg=NONE        ctermfg=10          cterm=NONE
  hi WarningMsg       ctermbg=NONE        ctermfg=1           cterm=NONE

  hi TabLine          ctermbg=8           ctermfg=3           cterm=NONE
  hi TabLineFill      ctermbg=8           ctermfg=0           cterm=NONE
  hi TabLineSel       ctermbg=3           ctermfg=0           cterm=NONE

  hi Cursor           ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi CursorColumn     ctermbg=8           ctermfg=NONE        cterm=NONE
  hi CursorLine       ctermbg=NONE        ctermfg=NONE        cterm=underline
  hi CursorLineNr     ctermbg=0           ctermfg=14          cterm=NONE

  hi helpLeadBlank    ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi helpNormal       ctermbg=NONE        ctermfg=NONE        cterm=NONE

  hi StatusLine       ctermbg=3           ctermfg=0           cterm=NONE
  hi StatusLineNC     ctermbg=8           ctermfg=0           cterm=NONE

  hi Visual           ctermbg=12          ctermfg=0           cterm=NONE
  hi VisualNOS        ctermbg=NONE        ctermfg=NONE        cterm=underline

  hi FoldColumn       ctermbg=0           ctermfg=8           cterm=NONE
  hi Folded           ctermbg=0           ctermfg=8           cterm=NONE

  hi VertSplit        ctermbg=8           ctermfg=8           cterm=NONE
  hi WildMenu         ctermbg=12          ctermfg=0           cterm=NONE

  hi SpecialKey       ctermbg=NONE        ctermfg=8           cterm=NONE
  hi Title            ctermbg=NONE        ctermfg=15          cterm=NONE

  hi DiffAdd          ctermbg=2           ctermfg=0           cterm=NONE
  hi DiffChange       ctermbg=6           ctermfg=0           cterm=NONE
  hi DiffDelete       ctermbg=1           ctermfg=0           cterm=NONE
  hi DiffText         ctermbg=11          ctermfg=0           cterm=NONE

  hi IncSearch        ctermbg=1           ctermfg=0           cterm=NONE
  hi Search           ctermbg=2           ctermfg=0           cterm=NONE

  hi Directory        ctermbg=NONE        ctermfg=14          cterm=NONE

  hi SpellBad         ctermbg=NONE        ctermfg=1           cterm=undercurl
  hi SpellCap         ctermbg=NONE        ctermfg=3           cterm=undercurl
  hi SpellLocal       ctermbg=NONE        ctermfg=2           cterm=undercurl
  hi SpellRare        ctermbg=NONE        ctermfg=5           cterm=undercurl

  hi ColorColumn      ctermbg=1           ctermfg=NONE        cterm=NONE
  hi SignColumn       ctermbg=0           ctermfg=8           cterm=NONE
endif

hi link Boolean            Constant
hi link Character          Constant
hi link Conceal            Normal
hi link Conditional        Statement
hi link Debug              Special
hi link Define             PreProc
hi link Delimiter          Special
hi link Exception          Statement
hi link Float              Number
hi link HelpCommand        Statement
hi link HelpExample        Statement
hi link Include            PreProc
hi link Keyword            Statement
hi link Label              Statement
hi link Macro              PreProc
hi link Number             Constant
hi link Operator           Statement
hi link PreCondit          PreProc
hi link Repeat             Statement
hi link SpecialChar        Special
hi link SpecialComment     Special
hi link StorageClass       Type
hi link Structure          Type
hi link Tag                Special
hi link Typedef            Type

hi link htmlEndTag         htmlTagName
hi link htmlLink           Function
hi link htmlSpecialTagName htmlTagName
hi link htmlTag            htmlTagName

hi link diffBDiffer        WarningMsg
hi link diffCommon         WarningMsg
hi link diffDiffer         WarningMsg
hi link diffIdentical      WarningMsg
hi link diffIsA            WarningMsg
hi link diffNoEOL          WarningMsg
hi link diffOnly           WarningMsg
hi link diffRemoved        WarningMsg
hi link diffAdded          String
