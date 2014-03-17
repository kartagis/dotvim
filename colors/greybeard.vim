set background=dark

hi clear

if exists("syntax_on")
  syntax reset

endif

let colors_name = "greybeard"

hi Normal           ctermfg=255  ctermbg=234  guifg=#eeeeee guibg=#1c1c1c cterm=NONE           gui=NONE
hi Comment          ctermfg=243  ctermbg=NONE guifg=#767676 guibg=NONE    cterm=NONE           gui=NONE
hi Constant         ctermfg=138  ctermbg=NONE guifg=#af8787 guibg=NONE    cterm=NONE           gui=NONE
hi Error            ctermfg=231  ctermbg=131  guifg=#ffffff guibg=#af5f5f cterm=NONE           gui=NONE
hi Identifier       ctermfg=146  ctermbg=NONE guifg=#afafd7 guibg=NONE    cterm=NONE           gui=NONE
hi Ignore           ctermfg=234  ctermbg=NONE guifg=#1c1c1c guibg=NONE    cterm=NONE           gui=NONE
hi PreProc          ctermfg=73   ctermbg=NONE guifg=#5fafaf guibg=NONE    cterm=NONE           gui=NONE
hi Special          ctermfg=95   ctermbg=NONE guifg=#875f5f guibg=NONE    cterm=NONE           gui=NONE
hi Statement        ctermfg=103  ctermbg=NONE guifg=#8787af guibg=NONE    cterm=NONE           gui=NONE
hi Todo             ctermfg=NONE ctermbg=NONE guifg=NONE    guibg=NONE    cterm=reverse        gui=reverse
hi Type             ctermfg=66   ctermbg=NONE guifg=#5f8787 guibg=NONE    cterm=NONE           gui=NONE
hi Underlined       ctermfg=44   ctermbg=NONE guifg=#00d7d7 guibg=NONE    cterm=underline      gui=underline

hi NonText          ctermbg=234  ctermfg=240  guibg=#1c1c1c guifg=#585858 cterm=NONE           gui=NONE
hi LineNr           ctermbg=233  ctermfg=240  guibg=#121212 guifg=#585858 cterm=NONE           gui=NONE

hi Pmenu            ctermbg=238  ctermfg=231  guibg=Grey27  guifg=#ffffff cterm=NONE           gui=NONE
hi PmenuSel         ctermbg=66   ctermfg=234  guibg=#5f8787 guifg=#1c1c1c cterm=NONE           gui=NONE
hi PmenuSbar        ctermbg=239  ctermfg=NONE guibg=#4e4e4e guifg=NONE    cterm=NONE           gui=NONE
hi PmenuThumb       ctermbg=66   ctermfg=66   guibg=#5f8787 guifg=#5f8787 cterm=NONE           gui=NONE

hi MoreMsg          ctermbg=234  ctermfg=66   guibg=#1c1c1c guifg=#5f8787 cterm=NONE           gui=NONE
hi ModeMsg          ctermbg=66   ctermfg=233  guibg=#5f8787 guifg=#121212 cterm=NONE           gui=NONE

hi TabLine          ctermbg=233  ctermfg=240  guibg=#121212 guifg=#585858 cterm=NONE           gui=NONE
hi TabLineSel       ctermbg=236  ctermfg=73   guibg=#303030 guifg=#5fafaf cterm=NONE           gui=NONE
hi TabLineFill      ctermbg=233  ctermfg=233  guibg=#121212 guifg=#121212 cterm=NONE           gui=reverse

hi Cursor           ctermbg=241  ctermfg=NONE guibg=#626262 guifg=NONE    cterm=NONE           gui=NONE

hi CursorLine       ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE
hi CursorLineNr     ctermbg=236  ctermfg=73   guibg=#303030 guifg=#5fafaf cterm=NONE           gui=NONE

hi helpLeadBlank    ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
hi helpNormal       ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE

hi StatusLine       ctermbg=101  ctermfg=234  guibg=#807e59 guifg=#1c1c1c cterm=bold           gui=NONE
hi StatusLineNC     ctermbg=59   ctermfg=234  guibg=#686868 guifg=#1c1c1c cterm=NONE           gui=italic

hi Visual           ctermbg=67   ctermfg=234  guibg=#8787af guifg=#1c1c1c cterm=NONE           gui=NONE
hi VisualNOS        ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=bold,underline gui=bold,underline

hi Folded           ctermbg=235  ctermfg=245  guibg=#4e4e4e guifg=#a8a8a8 cterm=NONE           gui=NONE
hi FoldColumn       ctermbg=235  ctermfg=245  guibg=#4e4e4e guifg=#a8a8a8 cterm=NONE           gui=NONE

hi WildMenu         ctermbg=67   ctermfg=234  guibg=#8787af guifg=#1c1c1c cterm=bold           gui=bold
hi VertSplit        ctermbg=59   ctermfg=59   guibg=#686868 guifg=#686868 cterm=NONE           gui=NONE

" " hi ColorColumn        ctermbg=234  ctermfg=NONE guibg=#1c1c1c guifg=NONE    cterm=NONE           gui=NONE
" " hi Conceal            ctermbg=248  ctermfg=252  guibg=#a9a9a9 guifg=#d3d3d3 cterm=NONE           gui=NONE
" " hi Directory          ctermbg=234  ctermfg=33   guibg=#1c1c1c guifg=#0f49ff cterm=NONE           gui=NONE
" " hi IncSearch          ctermbg=202  ctermfg=231  guibg=#ff4500 guifg=#ffffff cterm=bold           gui=NONE
" " hi MatchParen         ctermbg=234   ctermfg=226  guibg=#1c1c1c guifg=#fff000 cterm=bold           gui=NONE
      " hi Question           ctermbg=NONE ctermfg=148  guibg=NONE    guifg=#c3de4f cterm=bold           gui=NONE
      " hi Search             ctermbg=148  ctermfg=234   guibg=#c3de4f guifg=#1c1c1c cterm=bold           gui=NONE
      " hi SignColumn         ctermbg=187  ctermfg=231  guibg=#cdcdb4 guifg=#ffffff cterm=NONE           gui=NONE
      " hi SpecialKey         ctermbg=NONE ctermfg=238  guibg=NONE    guifg=#424242 cterm=NONE           gui=NONE
      " hi Title              ctermbg=NONE ctermfg=66   guibg=NONE    guifg=#2c8b8b cterm=bold           gui=NONE
" hi lCursor            ctermbg=145  ctermfg=234  guibg=#c2c2b0 guifg=#1c1c1c cterm=NONE           gui=NONE
" hi CursorColumn       ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE

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

hi link Boolean            Constant
hi link Character          Constant
hi link Conditional        Statement
hi link Debug              Special
hi link Define             PreProc
hi link Delimiter          Special
hi link ErrorMsg           Error
hi link Exception          Statement
hi link Float              Number
hi link Function           Identifier
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
hi link String             Constant
hi link Structure          Type
hi link Tag                Special
hi link Typedef            Type

hi link htmlLink           string
hi link htmlTag            htmlTagName
hi link htmlEndTag         htmlTagName
hi link htmlSpecialTagName htmlTagName
