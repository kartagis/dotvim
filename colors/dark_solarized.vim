 " ---------------------------------------------------------------------
 " COLOR VALUES
 " ---------------------------------------------------------------------
 " Download palettes and files from: http://ethanschoonover com/solarized

 " L\*a\*b values are canonical (White D65, Reference D50), other values are
 " matched in sRGB space.

 " SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      sRGB        HSB
 " --------- ------- ---- -------  ----------- ---------- ----------- -----------
 " base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
 " base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
 " base01    #586e75 10/7 brgreen  240 #4e4e4e 45 -07 -07  88 110 117 194  25  46
 " base00    #657b83 11/7 bryellow 241 #585858 50 -07 -07 101 123 131 195  23  51
 " base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
 " base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
 " base2     #eee8d5  7/7 white    254 #d7d7af 92 -00  10 238 232 213  44  11  93
 " base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
 " yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
 " orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
 " red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
 " magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
 " violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
 " blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
 " cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
 " green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60

hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "dark_solarized"

" if (has("gui_running") && g:solarized_degrade == 0)
"     let s:vmode         = "#002b36"
"     let s:base03        = "#073642"
"     let s:base02        = "#586e75"
"     let s:base01        = "#657b83"
"     let s:base00         = "#839496"
"     let s:base0          = "#93a1a1"
"     let s:base1          = "#eee8d5"
"     let s:base2          = "#fdf6e3"
"     let s:base3         = "#b58900"
"     let s:yellow        = "#cb4b16"
"     let s:orange           = "#dc322f"
"     let s:red          = "#d33682"
"     let s:magenta       = "#6c71c4"
"     let s:violet          = "#268bd2"
"     let s:blue            = "#2aa198"
"     let s:cyan           = "#859900"
" elselet s:green     if (has("gui_running") && g:solarized_degrade == 1)
" elseif g:solarized_termcolors != 256 && &t_Co >= 16
"     let s:vmode            = "cterm"
"     let s:base03          = "8"
"     let s:base02          = "0"
"     let s:base01          = "10"
"     let s:base00          = "11"
"     let s:base0            = "12"
"     let s:base1            = "14"
"     let s:base2            = "7"
"     let s:base3            = "15"
"     let s:yellow          = "3"
"     let s:orange          = "9"
"     let s:red                = "1"
"     let s:magenta        = "5"
"     let s:violet          = "13"
"     let s:blue              = "4"
"     let s:cyan              = "6"
"     let s:green            = "2"
" elseif g:solarized_termcolors == 256
"     let s:vmode       = "cterm"
"     let s:base03      = "234"
"     let s:base02      = "235"
"     let s:base01      = "239"
"     let s:base00      = "240"
"     let s:base0       = "244"
"     let s:base1       = "245"
"     let s:base2       = "187"
"     let s:base3       = "230"
"     let s:yellow      = "136"
"     let s:orange      = "166"
"     let s:red         = "124"
"     let s:magenta     = "125"
"     let s:violet      = "61"
"     let s:blue        = "33"
"     let s:cyan        = "37"
"     let s:green       = "64"
" else
"     let s:vmode       = "cterm"
"     let s:bright      = "* term=bold cterm=bold"
"     let #002b36      = "DarkGray       0*
"     let #073642      = "Black          0
"     let #586e75      = "LightGreen     2*
"     let #657b83      = "LightYellow    3*
"     let #839496       = "LightBlue      4*
"     let #93a1a1       = "LightCyan      6*
"     let #eee8d5       = "LightGray      7
"     let #fdf6e3       = "White          7*
"     let #b58900      = "DarkYellow     3
"     let #cb4b16      = "LightRed       1*
"     let #dc322f         = "DarkRed        1
"     let #d33682     = "DarkMagenta    5
"     let #6c71c4      = "LightMagenta   5*
"     let #268bd2        = "DarkBlue       4
"     let #2aa198        = "DarkCyan       6
"     let #859900       = "DarkGreen      2

" if &background == "light"
    " let s:temp03      = #073642
    " let s:temp02      = #586e75
    " let s:temp01      = #657b83
    " let s:temp00      = #839496
    " let s:base03      = #b58900
    " let s:base02      = #fdf6e3
    " let s:base01      = #eee8d5
    " let s:base00      = #93a1a1
    " let s:base0       = #839496
    " let s:base1       = #657b83
    " let s:base2       = #586e75
    " let s:base3       = #073642
"     let s:temp03      = #002b36
"     let s:temp02      = #073642
"     let s:temp01      = #586e75
"     let s:temp00      = #657b83
"     let #002b36      = #fdf6e3
"     let #073642      = #eee8d5
"     let #586e75      = #93a1a1
"     let #657b83      = #839496
"     let #839496       = s:temp00
"     let #93a1a1       = s:temp01
"     let #eee8d5       = s:temp02
"     let #fdf6e3       = s:temp03
"     if (s:back != "NONE")
"         let s:back    = #002b36
"     endif
" endif

" guibg=NONE ctermbg=NONE      guibg=NONE ctermbg=NONE
" guibg=#073642 ctermbg=NONE      guibg=#073642 ctermbg=NONE
" guibg=#002b36 ctermbg=234    guibg=#002b36 ctermbg=234
" guibg=#073642 ctermbg=235    guibg=#073642 ctermbg=235
" guibg=#586e75 ctermbg=239    guibg=#586e75 ctermbg=239
" guibg=#657b83 ctermbg=240    guibg=#657b83 ctermbg=240
" guibg=#839496 ctermbg=244     guibg=#839496 ctermbg=244
" guibg=#93a1a1 ctermbg=245     guibg=#93a1a1 ctermbg=245
" guibg=#eee8d5 ctermbg=187     guibg=#eee8d5 ctermbg=187
" guibg=#fdf6e3 ctermbg=230     guibg=#fdf6e3 ctermbg=230
" guibg=#859900 ctermbg=64     guibg=#859900 ctermbg=64
" guibg=#b58900 ctermbg=136    guibg=#b58900 ctermbg=136
" guibg=#cb4b16 ctermbg=166    guibg=#cb4b16 ctermbg=166
" guibg=#dc322f ctermbg=124       guibg=#dc322f ctermbg=124
" guibg=#d33682 ctermbg=125   guibg=#d33682 ctermbg=125
" guibg=#6c71c4 ctermbg=61    guibg=#6c71c4 ctermbg=61
" guibg=#268bd2 ctermbg=33      guibg=#268bd2 ctermbg=33
" guibg=#2aa198 ctermbg=37      guibg=#2aa198 ctermbg=37

" guifg=NONE ctermfg=NONE      guifg=NONE ctermfg=NONE
" guifg=#073642 ctermfg=NONE      guifg=#073642 ctermfg=NONE
" guifg=#002b36 ctermfg=234    guifg=#002b36 ctermfg=234
" guifg=#073642 ctermfg=235    guifg=#073642 ctermfg=235
" guifg=#586e75 ctermfg=239    guifg=#586e75 ctermfg=239
" guifg=#657b83 ctermfg=240    guifg=#657b83 ctermfg=240
" guifg=#839496 ctermfg=244     guifg=#839496 ctermfg=244
" guifg=#93a1a1 ctermfg=245     guifg=#93a1a1 ctermfg=245
" guifg=#eee8d5 ctermfg=187     guifg=#eee8d5 ctermfg=187
" guifg=#fdf6e3 ctermfg=230     guifg=#fdf6e3 ctermfg=230
" guifg=#859900 ctermfg=64     guifg=#859900 ctermfg=64
" guifg=#b58900 ctermfg=136    guifg=#b58900 ctermfg=136
" guifg=#cb4b16 ctermfg=166    guifg=#cb4b16 ctermfg=166
" guifg=#dc322f ctermfg=124       guifg=#dc322f ctermfg=124
" guifg=#d33682 ctermfg=125   guifg=#d33682 ctermfg=125
" guifg=#6c71c4 ctermfg=61    guifg=#6c71c4 ctermfg=61
" guifg=#268bd2 ctermfg=33      guifg=#268bd2 ctermfg=33
" guifg=#2aa198 ctermfg=37      guifg=#2aa198 ctermfg=37

hi! Normal          gui=NONE cterm=NONE    guifg=#839496 ctermfg=244   guibg=#002b36 ctermbg=NONE

hi! Comment         gui=NONE,italic cterm=NONE,italic    guifg=#586e75 ctermfg=239  guibg=NONE ctermbg=NONE

hi! Constant        gui=NONE cterm=NONE    guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE

hi! Identifier      gui=NONE cterm=NONE    guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE

hi! Statement       gui=NONE cterm=NONE    guifg=#859900 ctermfg=64   guibg=NONE ctermbg=NONE

hi! PreProc         gui=NONE cterm=NONE    guifg=#cb4b16 ctermfg=166  guibg=NONE ctermbg=NONE

hi! Type            gui=NONE cterm=NONE    guifg=#b58900 ctermfg=136  guibg=NONE ctermbg=NONE

hi! Special         gui=NONE cterm=NONE    guifg=#dc322f ctermfg=124     guibg=NONE ctermbg=NONE

hi! Underlined      gui=NONE cterm=NONE    guifg=#6c71c4 ctermfg=61  guibg=NONE ctermbg=NONE

hi! Ignore          gui=NONE cterm=NONE    guifg=NONE ctermfg=NONE    guibg=NONE ctermbg=NONE

hi! Error           gui=NONE,bold cterm=NONE,bold    guifg=#dc322f ctermfg=124     guibg=NONE ctermbg=NONE

hi! Todo            gui=NONE,bold cterm=NONE,bold    guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE

hi! SpecialKey  gui=NONE,reverse cterm=NONE,reverse    guifg=#dc322f ctermfg=124     guibg=NONE ctermbg=NONE
hi! NonText     gui=NONE,bold cterm=NONE,bold    guifg=#dc322f ctermfg=124     guibg=NONE ctermbg=NONE

hi! StatusLine      gui=NONE cterm=NONE    guifg=#93a1a1 ctermfg=245   guibg=#073642 ctermbg=235  gui=NONE,reverse cterm=NONE,reverse
hi! StatusLineNC    gui=NONE cterm=NONE    guifg=#657b83 ctermfg=240  guibg=#073642 ctermbg=235  gui=NONE,reverse cterm=NONE,reverse

hi! Visual          gui=NONE cterm=NONE    guifg=#586e75 ctermfg=239  guibg=#002b36 ctermbg=234  gui=NONE,reverse cterm=NONE,reverse
hi! Directory       gui=NONE cterm=NONE    guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE
hi! ErrorMsg        gui=NONE,reverse cterm=NONE,reverse    guifg=#dc322f ctermfg=124     guibg=NONE ctermbg=NONE
hi! IncSearch       gui=NONE,standout cterm=NONE,standout    guifg=#cb4b16 ctermfg=166  guibg=NONE ctermbg=NONE
hi! Search          gui=NONE,reverse cterm=NONE,reverse    guifg=#b58900 ctermfg=136  guibg=NONE ctermbg=NONE
hi! MoreMsg         gui=NONE cterm=NONE    guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE
hi! ModeMsg         gui=NONE cterm=NONE    guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE
hi! LineNr          gui=NONE cterm=NONE    guifg=#586e75 ctermfg=239  guibg=#073642 ctermbg=235
hi! Question        gui=NONE,bold cterm=NONE,bold    guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE
hi! VertSplit   gui=NONE cterm=NONE    guifg=#657b83 ctermfg=240  guibg=#657b83 ctermbg=240
hi! Title           gui=NONE,bold cterm=NONE,bold    guifg=#cb4b16 ctermfg=166  guibg=NONE ctermbg=NONE
hi! VisualNOS       gui=NONE,standout cterm=NONE,standout    guifg=NONE ctermfg=NONE    guibg=#073642 ctermbg=235  gui=NONE,reverse cterm=NONE,reverse
hi! WarningMsg      gui=NONE,bold cterm=NONE,bold    guifg=#dc322f ctermfg=124     guibg=NONE ctermbg=NONE
hi! WildMenu        gui=NONE cterm=NONE    guifg=#eee8d5 ctermfg=187   guibg=#073642 ctermbg=235  gui=NONE,reverse cterm=NONE,reverse

hi! Folded          gui=NONE,underline,bold cterm=NONE,underline,bold    guifg=#839496 ctermfg=244   guibg=#073642 ctermbg=235   guisp=#002b36
hi! FoldColumn      gui=NONE cterm=NONE    guifg=#839496 ctermfg=244   guibg=#073642 ctermbg=235

hi! DiffAdd         gui=NONE,reverse cterm=NONE,reverse    guifg=#859900 ctermfg=64   guibg=NONE ctermbg=NONE
hi! DiffChange      gui=NONE,reverse cterm=NONE,reverse    guifg=#b58900 ctermfg=136  guibg=NONE ctermbg=NONE
hi! DiffDelete      gui=NONE,reverse cterm=NONE,reverse    guifg=#dc322f ctermfg=124     guibg=NONE ctermbg=NONE
hi! DiffText        gui=NONE,reverse cterm=NONE,reverse    guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE
hi! DiffAdd         gui=NONE,bold cterm=NONE,bold    guifg=#859900 ctermfg=64   guibg=#073642 ctermbg=235  guisp=#859900
hi! DiffChange      gui=NONE,bold cterm=NONE,bold    guifg=#b58900 ctermfg=136  guibg=#073642 ctermbg=235  guisp=#b58900
hi! DiffDelete      gui=NONE,bold cterm=NONE,bold    guifg=#dc322f ctermfg=124     guibg=#073642 ctermbg=235
hi! DiffText        gui=NONE,bold cterm=NONE,bold    guifg=#268bd2 ctermfg=33    guibg=#073642 ctermbg=235  guisp=#268bd2

hi! SignColumn      gui=NONE cterm=NONE    guifg=#839496 ctermfg=244

hi! Conceal         gui=NONE cterm=NONE    guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE

hi! SpellBad        gui=NONE,undercurl cterm=NONE,undercurl    guifg=NONE ctermfg=NONE    guibg=NONE ctermbg=NONE     guisp=#dc322f
hi! SpellCap        gui=NONE,undercurl cterm=NONE,undercurl    guifg=NONE ctermfg=NONE    guibg=NONE ctermbg=NONE     guisp=#6c71c4
hi! SpellRare       gui=NONE,undercurl cterm=NONE,undercurl    guifg=NONE ctermfg=NONE    guibg=NONE ctermbg=NONE     guisp=#2aa198
hi! SpellLocal      gui=NONE,undercurl cterm=NONE,undercurl    guifg=NONE ctermfg=NONE    guibg=NONE ctermbg=NONE     guisp=#b58900

hi! Pmenu           gui=NONE cterm=NONE    guifg=#839496 ctermfg=244   guibg=#073642 ctermbg=235   gui=NONE,reverse cterm=NONE,reverse
hi! PmenuSel        gui=NONE cterm=NONE    guifg=#586e75 ctermfg=239  guibg=#eee8d5 ctermbg=187    gui=NONE,reverse cterm=NONE,reverse
hi! PmenuSbar       gui=NONE cterm=NONE    guifg=#eee8d5 ctermfg=187   guibg=#839496 ctermbg=244    gui=NONE,reverse cterm=NONE,reverse
hi! PmenuThumb      gui=NONE cterm=NONE    guifg=#839496 ctermfg=244   guibg=#002b36 ctermbg=234   gui=NONE,reverse cterm=NONE,reverse

hi! TabLine         gui=NONE,underline cterm=NONE,underline    guifg=#839496 ctermfg=244   guibg=#073642 ctermbg=235   guisp=#839496
hi! TabLineFill     gui=NONE,underline cterm=NONE,underline    guifg=#839496 ctermfg=244   guibg=#073642 ctermbg=235   guisp=#839496
hi! TabLineSel      gui=NONE,underline cterm=NONE,underline    guifg=#586e75 ctermfg=239  guibg=#eee8d5 ctermbg=187    guisp=#839496   gui=NONE,reverse,underline cterm=NONE,reverse,underline

hi! CursorColumn    gui=NONE cterm=NONE    guifg=NONE ctermfg=NONE    guibg=#073642 ctermbg=235
hi! CursorLine      gui=NONE cterm=NONE    guifg=NONE ctermfg=NONE    guibg=#073642 ctermbg=235   guisp=#93a1a1
hi! ColorColumn     gui=NONE cterm=NONE    guifg=NONE ctermfg=NONE    guibg=#073642 ctermbg=235
hi! Cursor          gui=NONE cterm=NONE    guifg=#002b36 ctermfg=234  guibg=#839496 ctermbg=244
hi! link lCursor Cursor

hi! MatchParen      gui=NONE,bold cterm=NONE,bold    guifg=#dc322f ctermfg=124     guibg=#586e75 ctermbg=239

hi! link vimVar Identifier
hi! link vimFunc Function
hi! link vimUserFunc Function
hi! link helpSpecial Special
hi! link vimSet Normal
hi! link vimSetEqual Normal
hi! vimCommentString   gui=NONE cterm=NONE     guifg=#6c71c4 ctermfg=61  guibg=NONE ctermbg=NONE
hi! vimCommand         gui=NONE cterm=NONE     guifg=#b58900 ctermfg=136  guibg=NONE ctermbg=NONE
hi! vimCmdSep          gui=NONE,bold cterm=NONE,bold     guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE
hi! helpExample        gui=NONE cterm=NONE     guifg=#93a1a1 ctermfg=245   guibg=NONE ctermbg=NONE
hi! helpOption         gui=NONE cterm=NONE     guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE
hi! helpNote           gui=NONE cterm=NONE     guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE
hi! helpVim            gui=NONE cterm=NONE     guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE
hi! helpHyperTextJump  gui=NONE,underline cterm=NONE,underline     guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE
hi! helpHyperTextEntry gui=NONE cterm=NONE     guifg=#859900 ctermfg=64   guibg=NONE ctermbg=NONE
hi! vimIsCommand       gui=NONE cterm=NONE     guifg=#657b83 ctermfg=240  guibg=NONE ctermbg=NONE
hi! vimSynMtchOpt      gui=NONE cterm=NONE     guifg=#b58900 ctermfg=136  guibg=NONE ctermbg=NONE
hi! vimSynType         gui=NONE cterm=NONE     guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE
hi! vimHiLink          gui=NONE cterm=NONE     guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE
hi! vimHiGroup         gui=NONE cterm=NONE     guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE
hi! vimGroup           gui=NONE,underline,bold cterm=NONE,underline,bold     guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE

hi! link diffAdded Statement
hi! link diffLine Identifier

hi! gitcommitComment       gui=NONE,italic cterm=NONE,italic      guifg=#586e75 ctermfg=239     guibg=NONE ctermbg=NONE
hi! link gitcommitUntracked gitcommitComment
hi! link gitcommitDiscarded gitcommitComment
hi! link gitcommitSelected  gitcommitComment
hi! gitcommitUnmerged      gui=NONE,bold cterm=NONE,bold      guifg=#859900 ctermfg=64      guibg=NONE ctermbg=NONE
hi! gitcommitOnBranch      gui=NONE,bold cterm=NONE,bold      guifg=#586e75 ctermfg=239     guibg=NONE ctermbg=NONE
hi! gitcommitBranch        gui=NONE,bold cterm=NONE,bold      guifg=#d33682 ctermfg=125    guibg=NONE ctermbg=NONE
hi! link gitcommitNoBranch gitcommitBranch
hi! gitcommitDiscardedType gui=NONE cterm=NONE      guifg=#dc322f ctermfg=124        guibg=NONE ctermbg=NONE
hi! gitcommitSelectedType  gui=NONE cterm=NONE      guifg=#859900 ctermfg=64      guibg=NONE ctermbg=NONE
hi! gitcommitHeader        gui=NONE cterm=NONE      guifg=#586e75 ctermfg=239     guibg=NONE ctermbg=NONE
hi! gitcommitUntrackedFile gui=NONE,bold cterm=NONE,bold      guifg=#2aa198 ctermfg=37       guibg=NONE ctermbg=NONE
hi! gitcommitDiscardedFile gui=NONE,bold cterm=NONE,bold      guifg=#dc322f ctermfg=124        guibg=NONE ctermbg=NONE
hi! gitcommitSelectedFile  gui=NONE,bold cterm=NONE,bold      guifg=#859900 ctermfg=64      guibg=NONE ctermbg=NONE
hi! gitcommitUnmergedFile  gui=NONE,bold cterm=NONE,bold      guifg=#b58900 ctermfg=136     guibg=NONE ctermbg=NONE
hi! gitcommitFile          gui=NONE,bold cterm=NONE,bold      guifg=#839496 ctermfg=244      guibg=NONE ctermbg=NONE
hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
hi! link gitcommitSelectedArrow  gitcommitSelectedFile
hi! link gitcommitUnmergedArrow  gitcommitUnmergedFile

hi! htmlTag            gui=NONE cterm=NONE  guifg=#586e75 ctermfg=239  guibg=NONE ctermbg=NONE
hi! htmlEndTag         gui=NONE cterm=NONE  guifg=#586e75 ctermfg=239  guibg=NONE ctermbg=NONE
hi! htmlTagN           gui=NONE,bold cterm=NONE,bold  guifg=#93a1a1 ctermfg=245   guibg=NONE ctermbg=NONE
hi! htmlTagName        gui=NONE,bold cterm=NONE,bold  guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE
hi! htmlSpecialTagName gui=NONE,italic cterm=NONE,italic  guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE
hi! htmlArg            gui=NONE cterm=NONE  guifg=#657b83 ctermfg=240  guibg=NONE ctermbg=NONE
hi! javaScript         gui=NONE cterm=NONE  guifg=#b58900 ctermfg=136  guibg=NONE ctermbg=NONE

hi! perlHereDoc      guifg=#93a1a1 ctermfg=245   guibg=#073642 ctermbg=NONE    gui=NONE cterm=NONE
hi! perlVarPlain     guifg=#b58900 ctermfg=136  guibg=#073642 ctermbg=NONE    gui=NONE cterm=NONE
hi! perlStatementFileDesc guifg=#2aa198 ctermfg=37 guibg=#073642 ctermbg=NONE gui=NONE cterm=NONE

hi! texStatement     guifg=#2aa198 ctermfg=37    guibg=#073642 ctermbg=NONE    gui=NONE cterm=NONE
hi! texMathZoneX     guifg=#b58900 ctermfg=136  guibg=#073642 ctermbg=NONE    gui=NONE cterm=NONE
hi! texMathMatcher   guifg=#b58900 ctermfg=136  guibg=#073642 ctermbg=NONE    gui=NONE cterm=NONE
hi! texMathMatcher   guifg=#b58900 ctermfg=136  guibg=#073642 ctermbg=NONE    gui=NONE cterm=NONE
hi! texRefLabel      guifg=#b58900 ctermfg=136  guibg=#073642 ctermbg=NONE    gui=NONE cterm=NONE

hi! rubyDefine       guifg=#93a1a1 ctermfg=245   guibg=#073642 ctermbg=NONE    gui=NONE,bold cterm=NONE,bold

hi! cPreCondit guifg=#cb4b16 ctermfg=166 guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE

hi! VarId      guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! ConId      guifg=#b58900 ctermfg=136  guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! hsImport   guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! hsString   guifg=#657b83 ctermfg=240  guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE

hi! hsStructure          guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! hs_hlFunctionName    guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE
hi! hsStatement          guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! hsImportLabel        guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! hs_OpFunctionName    guifg=#b58900 ctermfg=136  guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! hs_DeclareFunction   guifg=#cb4b16 ctermfg=166  guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! hsVarSym             guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! hsType               guifg=#b58900 ctermfg=136  guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! hsTypedef            guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! hsModuleName         guifg=#859900 ctermfg=64   guibg=NONE ctermbg=NONE    gui=NONE,underline cterm=NONE,underline
hi! hsModuleStartLabel   guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! link hsImportParams      Delimiter
hi! link hsDelimTypeExport   Delimiter
hi! link hsModuleStartLabel  hsStructure
hi! link hsModuleWhereLabel  hsModuleStartLabel

hi! hsNiceOperator       guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! hsniceoperator       guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE

hi! pandocTitleBlock                guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! pandocTitleBlockTitle           guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE    gui=NONE,bold cterm=NONE,bold
hi! pandocTitleComment              guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE    gui=NONE,bold cterm=NONE,bold
hi! pandocComment                   guifg=#586e75 ctermfg=239  guibg=NONE ctermbg=NONE    gui=NONE,italic cterm=NONE,italic
hi! pandocVerbatimBlock             guifg=#b58900 ctermfg=136  guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! link pandocVerbatimBlockDeep         pandocVerbatimBlock
hi! link pandocCodeBlock                 pandocVerbatimBlock
hi! link pandocCodeBlockDelim            pandocVerbatimBlock
hi! pandocBlockQuote                guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! pandocBlockQuoteLeader1         guifg=#268bd2 ctermfg=33    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! pandocBlockQuoteLeader2         guifg=#2aa198 ctermfg=37    guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! pandocBlockQuoteLeader3         guifg=#b58900 ctermfg=136  guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! pandocBlockQuoteLeader4         guifg=#dc322f ctermfg=124     guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! pandocBlockQuoteLeader5         guifg=#839496 ctermfg=244   guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! pandocBlockQuoteLeader6         guifg=#586e75 ctermfg=239  guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! pandocListMarker                guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE    gui=NONE cterm=NONE
hi! pandocListReference             guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE    gui=NONE,underline cterm=NONE,underline

hi! pandocDefinitionBlock                  guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE          cterm=NONE
hi! pandocDefinitionTerm                   guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE,standout cterm=NONE,standout
hi! pandocDefinitionIndctr                 guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE,bold     cterm=NONE,bold
hi! pandocEmphasisDefinition               guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE,italic   cterm=NONE,italic
hi! pandocEmphasisNestedDefinition         guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE,bold     cterm=NONE,bold
hi! pandocStrongEmphasisDefinition         guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE,bold     cterm=NONE,bold
hi! pandocStrongEmphasisNestedDefinition   guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE,bold     cterm=NONE,bold
hi! pandocStrongEmphasisEmphasisDefinition guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE,bold     cterm=NONE,bold
hi! pandocStrikeoutDefinition              guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE,reverse  cterm=NONE,reverse
hi! pandocVerbatimInlineDefinition         guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE          cterm=NONE
hi! pandocSuperscriptDefinition            guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE          cterm=NONE
hi! pandocSubscriptDefinition              guifg=#6c71c4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE          cterm=NONE

hi! pandocTable                         guifg=#268bd2 ctermfg=33 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! pandocTableStructure                guifg=#268bd2 ctermfg=33 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! link pandocTableStructureTop        pandocTableStructre
hi! link pandocTableStructureEnd        pandocTableStructre
hi! pandocTableZebraLight               guifg=#268bd2 ctermfg=33 guibg=#002b36 ctermbg=234    gui=NONE         cterm=NONE
hi! pandocTableZebraDark                guifg=#268bd2 ctermfg=33 guibg=#073642 ctermbg=235    gui=NONE         cterm=NONE
hi! pandocEmphasisTable                 guifg=#268bd2 ctermfg=33 guibg=NONE    ctermbg=NONE   gui=NONE,italic  cterm=NONE,italic
hi! pandocEmphasisNestedTable           guifg=#268bd2 ctermfg=33 guibg=NONE    ctermbg=NONE   gui=NONE,bold    cterm=NONE,bold
hi! pandocStrongEmphasisTable           guifg=#268bd2 ctermfg=33 guibg=NONE    ctermbg=NONE   gui=NONE,bold    cterm=NONE,bold
hi! pandocStrongEmphasisNestedTable     guifg=#268bd2 ctermfg=33 guibg=NONE    ctermbg=NONE   gui=NONE,bold    cterm=NONE,bold
hi! pandocStrongEmphasisEmphasisTable   guifg=#268bd2 ctermfg=33 guibg=NONE    ctermbg=NONE   gui=NONE,bold    cterm=NONE,bold
hi! pandocStrikeoutTable                guifg=#268bd2 ctermfg=33 guibg=NONE    ctermbg=NONE   gui=NONE,reverse cterm=NONE,reverse
hi! pandocVerbatimInlineTable           guifg=#268bd2 ctermfg=33 guibg=NONE    ctermbg=NONE   gui=NONE         cterm=NONE
hi! pandocSuperscriptTable              guifg=#268bd2 ctermfg=33 guibg=NONE    ctermbg=NONE   gui=NONE         cterm=NONE
hi! pandocSubscriptTable                guifg=#268bd2 ctermfg=33 guibg=NONE    ctermbg=NONE   gui=NONE         cterm=NONE

hi! pandocHeading                       guifg=#cb4b16 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocHeadingMarker                 guifg=#b58900 ctermfg=136 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocEmphasisHeading               guifg=#cb4b16 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocEmphasisNestedHeading         guifg=#cb4b16 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocStrongEmphasisHeading         guifg=#cb4b16 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocStrongEmphasisNestedHeading   guifg=#cb4b16 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocStrongEmphasisEmphasisHeading guifg=#cb4b16 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocStrikeoutHeading              guifg=#cb4b16 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE,reverse cterm=NONE,reverse
hi! pandocVerbatimInlineHeading         guifg=#cb4b16 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocSuperscriptHeading            guifg=#cb4b16 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocSubscriptHeading              guifg=#cb4b16 ctermfg=166 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold

hi! pandocLinkDelim                     guifg=#586e75 ctermfg=239 guibg=NONE ctermbg=NONE gui=NONE                cterm=NONE
hi! pandocLinkLabel                     guifg=#268bd2 ctermfg=33  guibg=NONE ctermbg=NONE gui=NONE,underline      cterm=NONE,underline
hi! pandocLinkText                      guifg=#268bd2 ctermfg=33  guibg=NONE ctermbg=NONE gui=NONE,underline,bold cterm=NONE,underline,bold
hi! pandocLinkURL                       guifg=#657b83 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE,underline      cterm=NONE,underline
hi! pandocLinkTitle                     guifg=#657b83 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE,underline      cterm=NONE,underline
hi! pandocLinkTitleDelim                guifg=#586e75 ctermfg=239 guibg=NONE ctermbg=NONE gui=NONE,underline      cterm=NONE,underline    guisp=#657b83
hi! pandocLinkDefinition                guifg=#2aa198 ctermfg=37  guibg=NONE ctermbg=NONE gui=NONE,underline      cterm=NONE,underline    guisp=#657b83
hi! pandocLinkDefinitionID              guifg=#268bd2 ctermfg=33  guibg=NONE ctermbg=NONE gui=NONE,bold           cterm=NONE,bold
hi! pandocImageCaption                  guifg=#6c71c4 ctermfg=61  guibg=NONE ctermbg=NONE gui=NONE,underline,bold cterm=NONE,underline,bold
hi! pandocFootnoteLink                  guifg=#859900 ctermfg=64  guibg=NONE ctermbg=NONE gui=NONE,underline      cterm=NONE,underline
hi! pandocFootnoteDefLink               guifg=#859900 ctermfg=64  guibg=NONE ctermbg=NONE gui=NONE,bold           cterm=NONE,bold
hi! pandocFootnoteInline                guifg=#859900 ctermfg=64  guibg=NONE ctermbg=NONE gui=NONE,underline,bold cterm=NONE,underline,bold
hi! pandocFootnote                      guifg=#859900 ctermfg=64  guibg=NONE ctermbg=NONE gui=NONE                cterm=NONE
hi! pandocCitationDelim                 guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE                cterm=NONE
hi! pandocCitation                      guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE                cterm=NONE
hi! pandocCitationID                    guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE,underline      cterm=NONE,underline
hi! pandocCitationRef                   guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE                cterm=NONE

hi! pandocStyleDelim                    guifg=#586e75 ctermfg=239 guibg=NONE ctermbg=NONE gui=NONE         cterm=NONE
hi! pandocEmphasis                      guifg=#839496 ctermfg=244 guibg=NONE ctermbg=NONE gui=NONE,italic  cterm=NONE,italic
hi! pandocEmphasisNested                guifg=#839496 ctermfg=244 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocStrongEmphasis                guifg=#839496 ctermfg=244 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocStrongEmphasisNested          guifg=#839496 ctermfg=244 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocStrongEmphasisEmphasis        guifg=#839496 ctermfg=244 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocStrikeout                     guifg=#586e75 ctermfg=239 guibg=NONE ctermbg=NONE gui=NONE,reverse cterm=NONE,reverse
hi! pandocVerbatimInline                guifg=#b58900 ctermfg=136 guibg=NONE ctermbg=NONE gui=NONE         cterm=NONE
hi! pandocSuperscript                   guifg=#6c71c4 ctermfg=61  guibg=NONE ctermbg=NONE gui=NONE         cterm=NONE
hi! pandocSubscript                     guifg=#6c71c4 ctermfg=61  guibg=NONE ctermbg=NONE gui=NONE         cterm=NONE

hi! pandocRule                          guifg=#268bd2 ctermfg=33  guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocRuleLine                      guifg=#268bd2 ctermfg=33  guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocEscapePair                    guifg=#dc322f ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE,bold    cterm=NONE,bold
hi! pandocCitationRef                   guifg=#d33682 ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE         cterm=NONE
hi! pandocNonBreakingSpace              guifg=#dc322f ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE,reverse cterm=NONE,reverse
hi! link pandocEscapedCharacter         pandocEscapePair
hi! link pandocLineBreak                pandocEscapePair

hi! pandocMetadataDelim                 guifg=#586e75 ctermfg=239 guibg=NONE ctermbg=NONE gui=NONE      cterm=NONE
hi! pandocMetadata                      guifg=#268bd2 ctermfg=33  guibg=NONE ctermbg=NONE gui=NONE      cterm=NONE
hi! pandocMetadataKey                   guifg=#268bd2 ctermfg=33  guibg=NONE ctermbg=NONE gui=NONE      cterm=NONE
hi! pandocMetadata                      guifg=#268bd2 ctermfg=33  guibg=NONE ctermbg=NONE gui=NONE,bold cterm=NONE,bold
hi! link pandocMetadataTitle            pandocMetadata

