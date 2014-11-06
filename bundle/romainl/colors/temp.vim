" 'apprentice.vim' -- Vim color scheme.
" Maintainer:   Romain Lafourcade (romainlafourcade@gmail.com)

hi clear

if exists('syntax_on')
  syntax reset

endif

let colors_name = 'temp'

if &background == "dark"
	" sdklhsgdshgdhsgd
        "
  hi    Normal     ctermfg=White        ctermbg=NONE     guifg=White      guibg=NONE   term=NONE       cterm=NONE      gui=NONE
  hi    Comment    ctermfg=Black        ctermbg=NONE     guifg=Black      guibg=NONE   term=bold       cterm=bold      gui=NONE
  hi    Constant   ctermfg=Green        ctermbg=NONE     guifg=Green      guibg=NONE   term=underline  cterm=NONE      gui=NONE
  hi    Special    ctermfg=Cyan         ctermbg=NONE     guifg=Grey       guibg=NONE   term=bold       cterm=NONE      gui=NONE
  hi    Identifier ctermfg=White        ctermbg=NONE     guifg=#40ffff    guibg=NONE   term=underline  cterm=bold      gui=NONE
  hi    Statement  ctermfg=Cyan         ctermbg=NONE     guifg=#ffff60    guibg=NONE   term=bold       cterm=bold      gui=bold
  hi    PreProc    ctermfg=Cyan         ctermbg=NONE     guifg=#ff80ff    guibg=NONE   term=underline  cterm=NONE      gui=NONE
  hi    Type       ctermfg=Cyan         ctermbg=NONE     guifg=#60ff60    guibg=NONE   term=underline  cterm=NONE      gui=bold
  hi    Underlined ctermfg=fg                            guifg=#80a0ff                 term=underline  cterm=underline gui=underline
  hi    Ignore     ctermfg=black        ctermbg=NONE     guifg=bg         guibg=NONE   term=NONE       cterm=NONE      gui=NONE
else
  hi    Comment    ctermfg=DarkBlue     ctermbg=NONE     guifg=Blue       guibg=NONE   term=bold       cterm=NONE      gui=NONE
  hi    Constant   ctermfg=DarkRed      ctermbg=NONE     guifg=Magenta    guibg=NONE   term=underline  cterm=NONE      gui=NONE
  hi    Special    ctermfg=DarkMagenta  ctermbg=NONE     guifg=SlateBlue  guibg=NONE   term=bold       cterm=NONE      gui=NONE
  hi    Identifier ctermfg=DarkCyan     ctermbg=NONE     guifg=DarkCyan   guibg=NONE   term=underline  cterm=NONE      gui=NONE
  hi    Statement  ctermfg=Brown        ctermbg=NONE     guifg=Brown      guibg=NONE   term=bold       cterm=NONE      gui=bold
  hi    PreProc    ctermfg=DarkMagenta  ctermbg=NONE     guifg=Purple     guibg=NONE   term=underline  cterm=NONE      gui=NONE
  hi    Type       ctermfg=DarkGreen    ctermbg=NONE     guifg=SeaGreen   guibg=NONE   term=underline  cterm=NONE      gui=bold
  hi    Underlined ctermfg=DarkMagenta                   guifg=SlateBlue               term=underline  cterm=underline gui=underline
  hi    Ignore     ctermfg=white        ctermbg=NONE     guifg=bg         guibg=NONE   term=NONE       cterm=NONE      gui=NONE
endif
hi Error            term=reverse            cterm=NONE            ctermfg=White            ctermbg=Red            gui=NONE            guifg=White            guibg=Red
hi Todo            term=standout            cterm=NONE            ctermfg=Black            ctermbg=Yellow            gui=NONE            guifg=Blue            guibg=Yellow
hi LineNr       ctermfg=Black ctermbg=NONE cterm=bold
hi CursorLineNr ctermfg=Cyan  ctermbg=NONE cterm=bold

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
