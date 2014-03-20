"""""""
" WIP "
"""""""
" TODO: scale down the color palette to 16 if possible
" 101  #87875f
" 108  #87af87
" 110  #8fafd7
" 131  #af5f5f
" 138  #af8787
" 180  #ffffff
" 215  #d7875f
" 23   #005f5f
" 232  #080808
" 234  #1c1c1c
" 236  #303030
" 238  #444444
" 240  #585858
" 242  #6c6c6c
" 250  #bcbcbc
" 44   #00d7d7
" 66   #5f8787
" 67   #5f87af
" 73   #5fafaf
" 74   #5fafd7

set background=dark

hi clear

if exists("syntax_on")
  syntax reset

endif

let colors_name = "greybeard"

hi Normal           ctermbg=234  ctermfg=250  guibg=#1c1c1c guifg=#bcbcbc cterm=NONE           gui=NONE
hi Comment          ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE
hi Constant         ctermbg=NONE ctermfg=138  guibg=NONE    guifg=#af8787 cterm=NONE           gui=NONE
hi Error            ctermbg=131  ctermfg=250  guibg=#af5f5f guifg=#bcbcbc cterm=NONE           gui=NONE
hi Identifier       ctermbg=NONE ctermfg=67   guibg=NONE    guifg=#5f87af cterm=NONE           gui=NONE
hi Ignore           ctermbg=NONE ctermfg=234  guibg=NONE    guifg=#1c1c1c cterm=NONE           gui=NONE
hi PreProc          ctermbg=NONE ctermfg=23   guibg=NONE    guifg=#005f5f cterm=NONE           gui=NONE
hi Special          ctermbg=NONE ctermfg=131  guibg=NONE    guifg=#af5f5f cterm=NONE           gui=NONE
hi Statement        ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#8fafd7 cterm=NONE           gui=NONE
hi Todo             ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=reverse        gui=reverse
hi Type             ctermbg=NONE ctermfg=66   guibg=NONE    guifg=#5f8787 cterm=NONE           gui=NONE
hi Underlined       ctermbg=NONE ctermfg=44   guibg=NONE    guifg=#00d7d7 cterm=underline      gui=underline
hi String           ctermbg=NONE ctermfg=108  guibg=NONE    guifg=#87af87 cterm=NONE           gui=NONE
hi Number           ctermbg=NONE ctermfg=215  guibg=NONE    guifg=#d7875f cterm=NONE           gui=NONE

hi NonText          ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE
hi LineNr           ctermbg=232  ctermfg=240  guibg=#080808 guifg=#585858 cterm=NONE           gui=NONE

hi Pmenu            ctermbg=238  ctermfg=250  guibg=#444444 guifg=#bcbcbc cterm=NONE           gui=NONE
hi PmenuSel         ctermbg=66   ctermfg=234  guibg=#5f8787 guifg=#1c1c1c cterm=NONE           gui=NONE
hi PmenuSbar        ctermbg=240  ctermfg=NONE guibg=#585858 guifg=NONE    cterm=NONE           gui=NONE
hi PmenuThumb       ctermbg=66   ctermfg=66   guibg=#5f8787 guifg=#5f8787 cterm=NONE           gui=NONE

hi ErrorMsg         ctermbg=131  ctermfg=250  guibg=#af5f5f guifg=#bcbcbc cterm=NONE           gui=NONE
hi MoreMsg          ctermbg=NONE ctermfg=66   guibg=NONE    guifg=#5f8787 cterm=NONE           gui=NONE
hi ModeMsg          ctermbg=108  ctermfg=234  guibg=#87af87 guifg=#1c1c1c cterm=NONE           gui=NONE
hi Question         ctermbg=NONE ctermfg=108  guibg=NONE    guifg=#87af87 cterm=NONE           gui=NONE
hi WarningMsg       ctermbg=NONE ctermfg=131  guibg=NONE    guifg=#af5f5f cterm=NONE           gui=NONE

hi TabLine          ctermbg=232  ctermfg=240  guibg=#080808 guifg=#585858 cterm=NONE           gui=NONE
hi TabLineSel       ctermbg=236  ctermfg=73   guibg=#303030 guifg=#5fafaf cterm=NONE           gui=NONE
hi TabLineFill      ctermbg=232  ctermfg=232  guibg=#080808 guifg=#080808 cterm=NONE           gui=reverse

hi Cursor           ctermbg=242  ctermfg=NONE guibg=#6c6c6c guifg=NONE    cterm=NONE           gui=NONE
hi CursorLine       ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE
hi CursorLineNr     ctermbg=236  ctermfg=73   guibg=#303030 guifg=#5fafaf cterm=NONE           gui=NONE

hi helpLeadBlank    ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
hi helpNormal       ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE

hi StatusLine       ctermbg=101  ctermfg=234  guibg=#87875f guifg=#1c1c1c cterm=NONE           gui=NONE
hi StatusLineNC     ctermbg=242  ctermfg=234  guibg=#6c6c6c guifg=#1c1c1c cterm=NONE           gui=italic

hi Visual           ctermbg=67   ctermfg=234  guibg=#5f87af guifg=#1c1c1c cterm=NONE           gui=NONE
hi VisualNOS        ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=bold,underline gui=bold,underline

hi Folded           ctermbg=240  ctermfg=250  guibg=#585858 guifg=#bcbcbc cterm=NONE           gui=NONE
hi FoldColumn       ctermbg=240  ctermfg=250  guibg=#585858 guifg=#bcbcbc cterm=NONE           gui=NONE

hi WildMenu         ctermbg=232  ctermfg=250  guibg=#080808 guifg=#bcbcbc cterm=bold           gui=bold
hi VertSplit        ctermbg=242  ctermfg=242  guibg=#6c6c6c guifg=#6c6c6c cterm=NONE           gui=NONE

hi Title            ctermbg=NONE ctermfg=180  guibg=NONE    guifg=#ffffff cterm=bold           gui=NONE
hi SpecialKey       ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE

hi DiffAdd          ctermbg=108  ctermfg=234  guibg=#87af87 guifg=#1c1c1c cterm=NONE           gui=NONE
hi DiffChange       ctermbg=74   ctermfg=234  guibg=#5fafd7 guifg=#1c1c1c cterm=NONE           gui=NONE
hi DiffDelete       ctermbg=131  ctermfg=234  guibg=#af5f5f guifg=#1c1c1c cterm=NONE           gui=NONE
hi DiffText         ctermbg=67   ctermfg=234  guibg=#5f87af guifg=#1c1c1c cterm=NONE           gui=NONE

hi IncSearch        ctermbg=131  ctermfg=234  guibg=#af5f5f guifg=#1c1c1c cterm=NONE           gui=NONE
hi Search           ctermbg=108  ctermfg=234  guibg=#87af87 guifg=#1c1c1c cterm=NONE           gui=NONE

hi Directory        ctermfg=73   ctermbg=NONE guifg=#5fafaf guibg=NONE    cterm=NONE           gui=NONE

hi link Boolean            Constant
hi link Character          Constant
hi link Conditional        Statement
hi link Debug              Special
hi link Define             PreProc
hi link Delimiter          Special
hi link Exception          Statement
hi link Float              Number
hi link Function           Identifier
hi link Include            PreProc
hi link Keyword            Statement
hi link Label              Statement
hi link Macro              PreProc
hi link Operator           Statement
hi link PreCondit          PreProc
hi link Repeat             Statement
hi link SpecialChar        Special
hi link SpecialComment     Special
hi link StorageClass       Type
hi link Structure          Type
hi link Tag                Special
hi link Typedef            Type

hi link htmlLink           String
hi link htmlTag            htmlTagName
hi link htmlEndTag         htmlTagName
hi link htmlSpecialTagName htmlTagName

" hi ColorColumn        ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
" hi Conceal            ctermbg=248  ctermfg=252  guibg=#a9a9a9 guifg=#d3d3d3 cterm=NONE           gui=NONE
" hi MatchParen         ctermbg=NONE  ctermfg=226  guibg=NONE    guifg=#fff000 cterm=bold           gui=NONE
" hi SignColumn         ctermbg=187  ctermfg=250  guibg=#cdcdb4 guifg=#bcbcbc cterm=NONE           gui=NONE
" hi lCursor            ctermbg=145  ctermfg=234  guibg=#c2c2b0 guifg=#1c1c1c cterm=NONE           gui=NONE
" hi CursorColumn       ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE

" hi SpellBad           ctermbg=NONE ctermfg=196  guibg=NONE    guifg=NONE    guisp=#ee2c2c        cterm=undercurl gui=undercurl
" hi SpellCap           ctermbg=NONE ctermfg=21   guibg=NONE    guifg=NONE    guisp=#0f49ff        cterm=undercurl gui=undercurl
" hi SpellLocal         ctermbg=NONE ctermfg=30   guibg=NONE    guifg=NONE    guisp=#2c8b8b        cterm=undercurl gui=undercurl
" hi SpellRare          ctermbg=NONE ctermfg=201  guibg=NONE    guifg=NONE    guisp=#ff00ff        cterm=undercurl gui=undercurl

" hi diffOldFile        ctermbg=NONE ctermfg=170  guibg=NONE    guifg=#da70d6 cterm=NONE           gui=italic
" hi diffNewFile        ctermbg=NONE ctermfg=226  guibg=NONE    guifg=#ffff00 cterm=NONE           gui=italic
" hi diffFile           ctermbg=NONE ctermfg=214  guibg=NONE    guifg=#ffa500 cterm=NONE           gui=italic
" hi diffLine           ctermbg=NONE ctermfg=201  guibg=NONE    guifg=#ff00ff cterm=NONE           gui=italic
" hi diffRemoved        ctermbg=NONE ctermfg=167  guibg=NONE    guifg=#cd5555 cterm=NONE           gui=NONE
" hi diffChanged        ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#6ea1cf cterm=NONE           gui=NONE
" hi diffAdded          ctermbg=NONE ctermfg=148  guibg=NONE    guifg=#c3de4f cterm=NONE           gui=NONE

" hi javaScriptOpAssign ctermbg=NONE ctermfg=96   guibg=NONE    guifg=#8f6f8f cterm=NONE           gui=NONE

" hi pythonDecorator    ctermbg=NONE ctermfg=101  guibg=NONE    guifg=#807e59 cterm=NONE           gui=NONE
" hi pythonException    ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#6ea1cf cterm=NONE           gui=NONE
" hi pythonExClass      ctermbg=NONE ctermfg=131  guibg=NONE    guifg=#996666 cterm=NONE           gui=NONE
