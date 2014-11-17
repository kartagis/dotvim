" HEX        XTERM  ANSI (TODO)
" ==================================
" #1c1c1c    234    0
" #262626    235    background color
" #303030    236
" #444444    238    8
" #585858    240
" #6c6c6c    242    7
" #bcbcbc    250    foreground color
" #ffffff    231    16
" #767676    243    5
" #9e9e9e    247    13
" #767676    243    2
" #9e9e9e    247    10
" #767676    243    6
" #8a8a8a    245    15
" #8a8a8a    245    4
" #8fafd7    246    12
" #8a8a8a    245    1
" #808080    244    9
" #949494    246    3
" #dadada    253    11

hi clear

if exists('syntax_on')
  syntax reset
endif

set background=dark

let colors_name = 'greyscale'

if &t_Co >= 256 || has('gui_running')
  hi Normal           ctermbg=235  ctermfg=250  guibg=#262626 guifg=#bcbcbc cterm=NONE           gui=NONE

  set background=dark

  hi Comment          ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE
  hi Constant         ctermbg=NONE ctermfg=244  guibg=NONE    guifg=#808080 cterm=NONE           gui=NONE
  hi Error            ctermbg=NONE ctermfg=245  guibg=NONE    guifg=#8a8a8a cterm=reverse        gui=reverse
  hi Identifier       ctermbg=NONE ctermfg=245  guibg=NONE    guifg=#8a8a8a cterm=NONE           gui=NONE
  hi Ignore           ctermbg=NONE ctermfg=235  guibg=NONE    guifg=#262626 cterm=NONE           gui=NONE
  hi PreProc          ctermbg=NONE ctermfg=243  guibg=NONE    guifg=#767676 cterm=NONE           gui=NONE
  hi Special          ctermbg=NONE ctermfg=243  guibg=NONE    guifg=#767676 cterm=NONE           gui=NONE
  hi Statement        ctermbg=NONE ctermfg=246  guibg=NONE    guifg=#8fafd7 cterm=NONE           gui=NONE
  hi String           ctermbg=NONE ctermfg=247  guibg=NONE    guifg=#9e9e9e cterm=NONE           gui=NONE
  hi Todo             ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=reverse        gui=reverse
  hi Type             ctermbg=NONE ctermfg=247  guibg=NONE    guifg=#9e9e9e cterm=NONE           gui=NONE
  hi Underlined       ctermbg=NONE ctermfg=243  guibg=NONE    guifg=#767676 cterm=underline      gui=underline

  hi LineNr           ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
  hi NonText          ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE

  hi Pmenu            ctermbg=238  ctermfg=250  guibg=#444444 guifg=#bcbcbc cterm=NONE           gui=NONE
  hi PmenuSbar        ctermbg=240  ctermfg=NONE guibg=#585858 guifg=NONE    cterm=NONE           gui=NONE
  hi PmenuSel         ctermbg=243  ctermfg=235  guibg=#767676 guifg=#262626 cterm=NONE           gui=NONE
  hi PmenuThumb       ctermbg=243  ctermfg=243  guibg=#767676 guifg=#767676 cterm=NONE           gui=NONE

  hi ErrorMsg         ctermbg=245  ctermfg=235  guibg=#8a8a8a guifg=#262626 cterm=NONE           gui=NONE
  hi ModeMsg          ctermbg=247  ctermfg=235  guibg=#9e9e9e guifg=#262626 cterm=NONE           gui=NONE
  hi MoreMsg          ctermbg=NONE ctermfg=243  guibg=NONE    guifg=#767676 cterm=NONE           gui=NONE
  hi Question         ctermbg=NONE ctermfg=247  guibg=NONE    guifg=#9e9e9e cterm=NONE           gui=NONE
  hi WarningMsg       ctermbg=NONE ctermfg=245  guibg=NONE    guifg=#8a8a8a cterm=NONE           gui=NONE

  hi TabLine          ctermbg=238  ctermfg=246  guibg=#444444 guifg=#949494 cterm=NONE           gui=NONE
  hi TabLineFill      ctermbg=238  ctermfg=238  guibg=#444444 guifg=#444444 cterm=NONE           gui=NONE
  hi TabLineSel       ctermbg=246  ctermfg=235  guibg=#949494 guifg=#262626 cterm=NONE           gui=NONE

  hi Cursor           ctermbg=242  ctermfg=NONE guibg=#6c6c6c guifg=NONE    cterm=NONE           gui=NONE
  hi CursorColumn     ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE
  hi CursorLine       ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE
  hi CursorLineNr     ctermbg=236  ctermfg=245  guibg=#303030 guifg=#8a8a8a cterm=NONE           gui=NONE

  hi helpLeadBlank    ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
  hi helpNormal       ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE

  hi StatusLine       ctermbg=246  ctermfg=235  guibg=#949494 guifg=#262626 cterm=NONE           gui=NONE
  hi StatusLineNC     ctermbg=238  ctermfg=246  guibg=#444444 guifg=#949494 cterm=NONE           gui=italic

  hi Visual           ctermbg=246  ctermfg=235  guibg=#8fafd7 guifg=#262626 cterm=NONE           gui=NONE
  hi VisualNOS        ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=bold,underline gui=bold,underline

  hi FoldColumn       ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
  hi Folded           ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE

  hi VertSplit        ctermbg=238  ctermfg=238  guibg=#444444 guifg=#444444 cterm=NONE           gui=NONE
  hi WildMenu         ctermbg=246  ctermfg=235  guibg=#8fafd7 guifg=#262626 cterm=bold           gui=bold

  hi Function         ctermbg=NONE ctermfg=253  guibg=NONE    guifg=#dadada cterm=NONE           gui=NONE
  hi SpecialKey       ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE
  hi Title            ctermbg=NONE ctermfg=231  guibg=NONE    guifg=#ffffff cterm=bold           gui=NONE

  hi DiffAdd          ctermbg=247  ctermfg=235  guibg=#9e9e9e guifg=#262626 cterm=NONE           gui=NONE
  hi DiffChange       ctermbg=243  ctermfg=235  guibg=#767676 guifg=#262626 cterm=NONE           gui=NONE
  hi DiffDelete       ctermbg=245  ctermfg=235  guibg=#8a8a8a guifg=#262626 cterm=NONE           gui=NONE
  hi DiffText         ctermbg=247  ctermfg=235  guibg=#9e9e9e guifg=#262626 cterm=NONE           gui=NONE

  hi IncSearch        ctermbg=245  ctermfg=235  guibg=#8a8a8a guifg=#262626 cterm=NONE           gui=NONE
  hi Search           ctermbg=247  ctermfg=235  guibg=#9e9e9e guifg=#262626 cterm=NONE           gui=NONE

  hi Directory        ctermbg=NONE ctermfg=245  guibg=NONE    guifg=#8a8a8a cterm=NONE           gui=NONE
  hi MatchParen       ctermbg=NONE ctermfg=253  guibg=NONE    guifg=#dadada cterm=bold           gui=NONE

  hi SpellBad         ctermbg=NONE ctermfg=245  guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#8a8a8a
  hi SpellCap         ctermbg=NONE ctermfg=245  guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#8a8a8a
  hi SpellLocal       ctermbg=NONE ctermfg=243  guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#767676
  hi SpellRare        ctermbg=NONE ctermfg=244  guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#808080

  hi ColorColumn      ctermbg=245  ctermfg=NONE guibg=#8a8a8a guifg=NONE    cterm=NONE           gui=NONE
  hi signColumn       ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
  set t_Co=16

  hi Normal           ctermbg=NONE        ctermfg=15          cterm=NONE
  hi Comment          ctermbg=NONE        ctermfg=7           cterm=NONE
  hi Constant         ctermbg=NONE        ctermfg=9           cterm=NONE
  hi Function         ctermbg=NONE        ctermfg=3           cterm=NONE
  hi Identifier       ctermbg=NONE        ctermfg=12          cterm=NONE
  hi PreProc          ctermbg=NONE        ctermfg=6           cterm=NONE
  hi Special          ctermbg=NONE        ctermfg=10          cterm=NONE
  hi Statement        ctermbg=NONE        ctermfg=12          cterm=NONE
  hi String           ctermbg=NONE        ctermfg=2           cterm=NONE
  hi Todo             ctermbg=NONE        ctermfg=NONE        cterm=reverse
  hi Type             ctermbg=NONE        ctermfg=13          cterm=NONE

  hi Error            ctermbg=NONE        ctermfg=1           cterm=reverse
  hi Ignore           ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi Underlined       ctermbg=NONE        ctermfg=11          cterm=underline

  hi LineNr           ctermbg=0           ctermfg=7           cterm=NONE
  hi NonText          ctermbg=NONE        ctermfg=8           cterm=NONE

  hi Pmenu            ctermbg=7           ctermfg=0           cterm=NONE
  hi PmenuSbar        ctermbg=7           ctermfg=NONE        cterm=NONE
  hi PmenuSel         ctermbg=2           ctermfg=0           cterm=NONE
  hi PmenuThumb       ctermbg=2           ctermfg=NONE        cterm=NONE

  hi ErrorMsg         ctermbg=1           ctermfg=0           cterm=NONE
  hi ModeMsg          ctermbg=2           ctermfg=0           cterm=NONE
  hi MoreMsg          ctermbg=NONE        ctermfg=11          cterm=NONE
  hi Question         ctermbg=NONE        ctermfg=2           cterm=NONE
  hi WarningMsg       ctermbg=NONE        ctermfg=1           cterm=NONE

  hi TabLine          ctermbg=8           ctermfg=3           cterm=NONE
  hi TabLineFill      ctermbg=8           ctermfg=0           cterm=NONE
  hi TabLineSel       ctermbg=3           ctermfg=0           cterm=NONE

  hi Cursor           ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi CursorLine       ctermbg=8           ctermfg=NONE        cterm=NONE
  hi CursorLineNr     ctermbg=8           ctermfg=14          cterm=NONE

  hi helpLeadBlank    ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi helpNormal       ctermbg=NONE        ctermfg=NONE        cterm=NONE

  hi StatusLine       ctermbg=3           ctermfg=0           cterm=NONE
  hi StatusLineNC     ctermbg=0           ctermfg=3           cterm=NONE

  hi Visual           ctermbg=15          ctermfg=0           cterm=NONE
  hi VisualNOS        ctermbg=NONE        ctermfg=NONE        cterm=bold,underline

  hi FoldColumn       ctermbg=0           ctermfg=7           cterm=NONE
  hi Folded           ctermbg=0           ctermfg=7           cterm=NONE

  hi VertSplit        ctermbg=8           ctermfg=8           cterm=NONE
  hi WildMenu         ctermbg=14          ctermfg=0           cterm=NONE

  hi Function         ctermbg=NONE        ctermfg=11          cterm=NONE
  hi SpecialKey       ctermbg=NONE        ctermfg=8           cterm=NONE
  hi Title            ctermbg=NONE        ctermfg=15          cterm=bold

  hi DiffAdd          ctermbg=2           ctermfg=0           cterm=NONE
  hi DiffChange       ctermbg=6           ctermfg=0           cterm=NONE
  hi DiffDelete       ctermbg=1           ctermfg=0           cterm=NONE
  hi DiffText         ctermbg=11          ctermfg=0           cterm=NONE

  hi IncSearch        ctermbg=1           ctermfg=0           cterm=NONE
  hi Search           ctermbg=2           ctermfg=0           cterm=NONE

  hi Directory        ctermbg=NONE        ctermfg=11          cterm=NONE

  hi SpellBad         ctermbg=NONE        ctermfg=1           cterm=undercurl
  hi SpellCap         ctermbg=NONE        ctermfg=3           cterm=undercurl
  hi SpellLocal       ctermbg=NONE        ctermfg=2           cterm=undercurl
  hi SpellRare        ctermbg=NONE        ctermfg=5           cterm=undercurl

  hi ColorColumn      ctermbg=1           ctermfg=NONE        cterm=NONE
  hi SignColumn       ctermbg=0           ctermfg=7           cterm=NONE
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
