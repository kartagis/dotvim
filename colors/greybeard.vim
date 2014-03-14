set background=dark

hi clear
if exists("syntax_on")

  syntax reset
endif

let colors_name = "greybeard"
let boo = 0
let num = 122363
	
hi Normal       term=bold      cterm=NONE      ctermfg=255        ctermbg=NONE gui=NONE      guifg=#80a0ff guibg=NONE
hi Comment      term=bold      cterm=NONE      ctermfg=243        ctermbg=NONE gui=NONE      guifg=#80a0ff guibg=NONE
hi Constant     term=underline cterm=NONE      ctermfg=139        ctermbg=NONE gui=NONE      guifg=#ffa0a0 guibg=NONE
hi Special      term=bold      cterm=NONE      ctermfg=181        ctermbg=NONE gui=NONE      guifg=Orange  guibg=NONE
hi Identifier   term=underline cterm=NONE      ctermfg=243        ctermbg=NONE gui=NONE      guifg=#40ffff guibg=NONE
hi Statement    term=bold      cterm=NONE      ctermfg=103        ctermbg=NONE gui=bold      guifg=#ffff60 guibg=NONE
hi PreProc      term=underline cterm=NONE      ctermfg=73         ctermbg=NONE gui=NONE      guifg=#ff80ff guibg=NONE
hi Type         term=underline cterm=NONE      ctermfg=66         ctermbg=NONE gui=bold      guifg=#60ff60 guibg=NONE
hi Underlined   term=underline cterm=underline ctermfg=44                      gui=underline guifg=#80a0ff
hi Ignore       term=NONE      cterm=NONE      ctermfg=234        ctermbg=NONE gui=NONE      guifg=bg      guibg=NONE
hi Error        term=reverse   cterm=NONE      ctermfg=231        ctermbg=131  gui=NONE guifg=White guibg=Red
hi Todo         term=standout  cterm=NONE      ctermfg=234        ctermbg=187  gui=NONE guifg=Blue guibg=Yellow

" TODO skgsgdsdg

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
" SynLink String         Constant
" SynLink Character      Constant
" SynLink Number         Constant
" SynLink Boolean        Constant
" SynLink Float          Number
" SynLink Function       Identifier
" SynLink Conditional    Statement
" SynLink Repeat         Statement
" SynLink Label          Statement
" SynLink Operator       Statement
" SynLink Keyword        Statement
" SynLink Exception      Statement
" SynLink Include        PreProc
" SynLink Define         PreProc
" SynLink Macro          PreProc
" SynLink PreCondit      PreProc
" SynLink StorageClass   Type
" SynLink Structure      Type
" SynLink Typedef        Type
" SynLink Tag            Special
" SynLink SpecialChar    Special
" SynLink Delimiter      Special
" SynLink SpecialComment Special
" SynLink Debug          Special

" hi Normal             ctermbg=234  ctermfg=145  guibg=#1c1c1c guifg=#c2c2b0 cterm=NONE           gui=NONE
" hi Boolean            ctermbg=NONE ctermfg=253  guibg=NONE    guifg=#ff9800 cterm=NONE           gui=NONE
" " hi ColorColumn        ctermbg=234  ctermfg=NONE guibg=#1c1c1c guifg=NONE    cterm=NONE           gui=NONE
" hi Comment            ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#686868 cterm=NONE           gui=italic
" " hi Conceal            ctermbg=248  ctermfg=252  guibg=#a9a9a9 guifg=#d3d3d3 cterm=NONE           gui=NONE
" hi Constant           ctermbg=NONE ctermfg=250  guibg=NONE    guifg=#ff9800 cterm=NONE           gui=NONE
" " hi Directory          ctermbg=234  ctermfg=33   guibg=#1c1c1c guifg=#0f49ff cterm=NONE           gui=NONE
" " hi Error              ctermbg=196  ctermfg=231  guibg=#ff0000 guifg=#ffffff cterm=NONE           gui=NONE
" hi Function           ctermbg=NONE ctermfg=255  guibg=NONE    guifg=#faf4c6 cterm=NONE           gui=NONE
" hi Identifier         ctermbg=NONE ctermfg=250  guibg=NONE    guifg=#6ea1cf cterm=NONE           gui=NONE
" " hi Ignore             ctermbg=NONE ctermfg=234  guibg=NONE    guifg=#1c1c1c cterm=NONE           gui=NONE
" " hi IncSearch          ctermbg=202  ctermfg=231  guibg=#ff4500 guifg=#ffffff cterm=bold           gui=NONE
" hi Keyword            ctermbg=NONE ctermfg=247  guibg=NONE    guifg=#6ea1cf cterm=NONE           gui=NONE
" hi LineNr             ctermbg=234  ctermfg=240  guibg=#1c1c1c guifg=#686868 cterm=NONE           gui=NONE
" " hi MatchParen         ctermbg=234   ctermfg=226  guibg=#1c1c1c guifg=#fff000 cterm=bold           gui=NONE
" hi NonText            ctermbg=234  ctermfg=237  guibg=#1c1c1c guifg=#424242 cterm=NONE           gui=NONE
" hi Number             ctermbg=NONE ctermfg=250  guibg=NONE    guifg=#cc8800 cterm=NONE           gui=NONE
" hi PreProc            ctermbg=NONE ctermfg=66   guibg=NONE    guifg=#2c8b8b cterm=NONE           gui=NONE
" hi Question           ctermbg=NONE ctermfg=148  guibg=NONE    guifg=#c3de4f cterm=bold           gui=NONE
" hi Search             ctermbg=148  ctermfg=234   guibg=#c3de4f guifg=#1c1c1c cterm=bold           gui=NONE
" hi SignColumn         ctermbg=187  ctermfg=231  guibg=#cdcdb4 guifg=#ffffff cterm=NONE           gui=NONE
" hi Special            ctermbg=NONE ctermfg=64   guibg=NONE    guifg=#749941 cterm=NONE           gui=NONE
" hi SpecialKey         ctermbg=NONE ctermfg=238  guibg=NONE    guifg=#424242 cterm=NONE           gui=NONE
" hi Statement          ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#6ea1cf cterm=NONE           gui=NONE
" hi String             ctermbg=NONE ctermfg=65   guibg=NONE    guifg=#749941 cterm=NONE           gui=NONE
" hi Title              ctermbg=NONE ctermfg=66   guibg=NONE    guifg=#2c8b8b cterm=bold           gui=NONE
" hi Todo               ctermbg=234  ctermfg=96   guibg=#1c1c1c guifg=#8f6f8f cterm=bold,underline gui=bold,italic,underline
" hi Type               ctermbg=NONE ctermfg=103  guibg=NONE    guifg=#8c9bb8 cterm=NONE           gui=NONE
" hi Underlined         ctermbg=NONE ctermfg=111  guibg=NONE    guifg=#80a0ff cterm=underline      gui=underline
" hi VertSplit          ctermbg=59   ctermfg=59   guibg=#686868 guifg=#686868 cterm=NONE           gui=NONE
" hi WildMenu           ctermbg=117  ctermfg=234   guibg=#8bdaed guifg=#1c1c1c cterm=NONE           gui=NONE

" hi Pmenu              ctermbg=238  ctermfg=231  guibg=#424242 guifg=#ffffff cterm=NONE           gui=NONE
" hi PmenuSel           ctermbg=148  ctermfg=234   guibg=#c3de4f guifg=#1c1c1c cterm=NONE           gui=NONE
" hi PmenuSbar          ctermbg=250  ctermfg=NONE guibg=#686868 guifg=NONE    cterm=NONE           gui=NONE
" hi PmenuThumb         ctermbg=148  ctermfg=148  guibg=#c3de4f guifg=#c3de4f cterm=NONE           gui=NONE

" hi ErrorMsg           ctermbg=NONE ctermfg=203  guibg=NONE    guifg=#ff6a6a cterm=bold           gui=NONE
" hi MoreMsg            ctermbg=234  ctermfg=29   guibg=#1c1c1c guifg=#36a165 cterm=bold           gui=NONE
" hi ModeMsg            ctermbg=148  ctermfg=234   guibg=#c3de4f guifg=#1c1c1c cterm=bold           gui=NONE
" hi WarningMsg         ctermbg=234  ctermfg=208  guibg=#1c1c1c guifg=#ee9a00 cterm=NONE           gui=NONE

" hi TabLine            ctermbg=234  ctermfg=148  guibg=#1c1c1c guifg=#c3de4f cterm=NONE           gui=NONE
" hi TabLineSel         ctermbg=145  ctermfg=234  guibg=#c2c2b0 guifg=#1c1c1c cterm=bold           gui=NONE
" hi TabLineFill        ctermbg=234  ctermfg=234  guibg=#1c1c1c guifg=#c2c2b0 cterm=reverse        gui=reverse

" hi Cursor             ctermbg=241  ctermfg=NONE guibg=#686868 guifg=NONE    cterm=NONE           gui=NONE
" hi lCursor            ctermbg=145  ctermfg=234  guibg=#c2c2b0 guifg=#1c1c1c cterm=NONE           gui=NONE
" hi CursorColumn       ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE
" hi CursorLine         ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE
" hi CursorLineNr       ctermbg=236  ctermfg=148  guibg=#303030 guifg=#c3de4f cterm=NONE           gui=NONE

" hi helpLeadBlank      ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
" hi helpNormal         ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE

" hi StatusLine         ctermbg=101  ctermfg=234   guibg=#807e59 guifg=#1c1c1c cterm=bold           gui=NONE
" hi StatusLineNC       ctermbg=59   ctermfg=234   guibg=#686868 guifg=#1c1c1c cterm=NONE           gui=italic

" hi Visual             ctermbg=67   ctermfg=234   guibg=#67869c guifg=#1c1c1c cterm=NONE           gui=NONE
" hi VisualNOS          ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=bold,underline gui=bold,underline

" hi Folded             ctermbg=59   ctermfg=110  guibg=#424242 guifg=#8c9bb8 cterm=NONE           gui=NONE
" hi FoldColumn         ctermbg=236  ctermfg=66   guibg=#303030 guifg=#67869c cterm=bold           gui=NONE

" " hi SpellBad           ctermbg=NONE ctermfg=196  guibg=NONE    guifg=NONE    guisp=#ee2c2c        cterm=undercurl gui=undercurl
" " hi SpellCap           ctermbg=NONE ctermfg=21   guibg=NONE    guifg=NONE    guisp=#0f49ff        cterm=undercurl gui=undercurl
" " hi SpellLocal         ctermbg=NONE ctermfg=30   guibg=NONE    guifg=NONE    guisp=#2c8b8b        cterm=undercurl gui=undercurl
" " hi SpellRare          ctermbg=NONE ctermfg=201  guibg=NONE    guifg=NONE    guisp=#ff00ff        cterm=undercurl gui=undercurl

" " hi diffOldFile        ctermbg=NONE ctermfg=170  guibg=NONE    guifg=#da70d6 cterm=NONE           gui=italic
" " hi diffNewFile        ctermbg=NONE ctermfg=226  guibg=NONE    guifg=#ffff00 cterm=NONE           gui=italic
" " hi diffFile           ctermbg=NONE ctermfg=214  guibg=NONE    guifg=#ffa500 cterm=NONE           gui=italic
" " hi diffLine           ctermbg=NONE ctermfg=201  guibg=NONE    guifg=#ff00ff cterm=NONE           gui=italic
" " hi diffRemoved        ctermbg=NONE ctermfg=167  guibg=NONE    guifg=#cd5555 cterm=NONE           gui=NONE
" " hi diffChanged        ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#6ea1cf cterm=NONE           gui=NONE
" " hi diffAdded          ctermbg=NONE ctermfg=148  guibg=NONE    guifg=#c3de4f cterm=NONE           gui=NONE
" hi DiffAdd            ctermbg=35   ctermfg=234  guibg=#36a165 guifg=#1c1c1c cterm=NONE           gui=NONE
" hi DiffChange         ctermbg=110  ctermfg=234  guibg=#6ea1cf guifg=#1c1c1c cterm=NONE           gui=NONE
" hi DiffDelete         ctermbg=88   ctermfg=234  guibg=#8b3626 guifg=#1c1c1c cterm=NONE           gui=NONE
" hi DiffText           ctermbg=117  ctermfg=234  guibg=#8bdaed guifg=#1c1c1c cterm=NONE           gui=NONE

" hi javaScriptOpAssign ctermbg=NONE ctermfg=96   guibg=NONE    guifg=#8f6f8f cterm=NONE           gui=NONE

" hi pythonDecorator    ctermbg=NONE ctermfg=101  guibg=NONE    guifg=#807e59 cterm=NONE           gui=NONE
" hi pythonException    ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#6ea1cf cterm=NONE           gui=NONE
" hi pythonExClass      ctermbg=NONE ctermfg=131  guibg=NONE    guifg=#996666 cterm=NONE           gui=NONE

" hi htmlLink           ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
" hi htmlArg            ctermbg=NONE ctermfg=103  guibg=NONE    guifg=#8c9bb8 cterm=NONE           gui=NONE
" hi htmlTag            ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#6ea1cf cterm=NONE           gui=NONE
" hi htmlSpecialTagName ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#6ea1cf cterm=NONE           gui=NONE
" hi htmlTagName        ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#6ea1cf cterm=NONE           gui=NONE
" hi htmlEndTag         ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#6ea1cf cterm=NONE           gui=NONE
