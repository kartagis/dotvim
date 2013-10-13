 " ---------------------------------------------------------------------
 " COLOR VALUES
 " ---------------------------------------------------------------------
 " Download palettes and files from: http://ethanschoonover com/solarized
" "
 " L\*a\*b values are canonical (White D65, Reference D50), other values are
 " matched in sRGB space.
" "
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
let colors_name = "solarized_simple"

 " Set both gui and terminal color values in separate conditional statements
 " Due to possibility that CSApprox is running (though I suppose we could just
 " leave the hex values out entirely in that case and include only cterm colors)
 " We also check to see if user has set solarized (force use of the
 " neutral gray monotone palette component)
" if (has("gui_running") && g:solarized_degrade == 0)
 "    let s:vmode       = "gui"
 "    let #002b36      = "#002b36"
 "    let #073642      = "#073642"
 "    let s:base01      = "#586e75"
 "    let s:base00      = "#657b83"
 "    let s:base0       = "#839496"
 "    let s:base1       = "#93a1a1"
 "    let s:base2       = "#eee8d5"
 "    let s:base3       = "#fdf6e3"
 "    let s:yellow      = "#b58900"
 "    let s:orange      = "#cb4b16"
 "    let s:red         = "#dc322f"
 "    let s:magenta     = "#d33682"
 "    let s:violet      = "#6c71c4"
 "    let s:blue        = "#268bd2"
 "    let s:cyan        = "#2aa198"
 "    "let s:green       = "#859900 "original
 "    let s:green       = "#719e07 "experimental
" elseif (has("gui_running") && g:solarized_degrade == 1)
 "     These colors are identical to the 256 color mode  They may be viewed
 "     while in gui mode via "let g:solarized_degrade=1", though this is not
 "     recommened and is for testing only.
 "    let s:vmode       = "gui"
 "    let #002b36      = "#1c1c1c"
 "    let #073642      = "#262626"
 "    let s:base01      = "#4e4e4e"
 "    let s:base00      = "#585858"
 "    let s:base0       = "#808080"
 "    let s:base1       = "#8a8a8a"
 "    let s:base2       = "#d7d7af"
 "    let s:base3       = "#ffffd7"
 "    let s:yellow      = "#af8700"
 "    let s:orange      = "#d75f00"
 "    let s:red         = "#af0000"
 "    let s:magenta     = "#af005f"
 "    let s:violet      = "#5f5faf"
 "    let s:blue        = "#0087ff"
 "    let s:cyan        = "#00afaf"
 "    let s:green       = "#5f8700"
" elseif g:solarized_termcolors != 256 && &t_Co >= 16
 "    let s:vmode       = "cterm"
 "    let #002b36      = "8"
 "    let #073642      = "0"
 "    let s:base01      = "10"
 "    let s:base00      = "11"
 "    let s:base0       = "12"
 "    let s:base1       = "14"
 "    let s:base2       = "7"
 "    let s:base3       = "15"
 "    let s:yellow      = "3"
 "    let s:orange      = "9"
 "    let s:red         = "1"
 "    let s:magenta     = "5"
 "    let s:violet      = "13"
 "    let s:blue        = "4"
 "    let s:cyan        = "6"
 "    let s:green       = "2"
" elseif g:solarized_termcolors == 256
 "    let s:vmode       = "cterm"
 "    let #002b36      = "234"
 "    let #073642      = "235"
 "    let s:base01      = "239"
 "    let s:base00      = "240"
 "    let s:base0       = "244"
 "    let s:base1       = "245"
 "    let s:base2       = "187"
 "    let s:base3       = "230"
 "    let s:yellow      = "136"
 "    let s:orange      = "166"
 "    let s:red         = "124"
 "    let s:magenta     = "125"
 "    let s:violet      = "61"
 "    let s:blue        = "33"
 "    let s:cyan        = "37"
 "    let s:green       = "64"
" else
 "    let s:vmode       = "cterm"
 "    let s:bright      = "* term=bold cterm=bold"
 "   let #002b36      = "0 s:bright
 "   let #073642      = "0"
 "   let s:base01      = "2 s:bright
 "   let s:base00      = "3 s:bright
 "   let s:base0       = "4 s:bright
 "   let s:base1       = "6 s:bright
 "   let s:base2       = "7"
 "   let s:base3       = "7 s:bright
 "   let s:yellow      = "3"
 "   let s:orange      = "1 s:bright
 "   let s:red         = "1"
 "   let s:magenta     = "5"
 "   let s:violet      = "5 s:bright
 "   let s:blue        = "4"
 "   let s:cyan        = "6"
 "   let s:green       = "2"
 "    let #002b36      = "DarkGray       0*
 "    let #073642      = "Black          0
 "    let s:base01      = "LightGreen     2*
 "    let s:base00      = "LightYellow    3*
 "    let s:base0       = "LightBlue      4*
 "    let s:base1       = "LightCyan      6*
 "    let s:base2       = "LightGray      7
 "    let s:base3       = "White          7*
 "    let s:yellow      = "DarkYellow     3
 "    let s:orange      = "LightRed       1*
 "    let s:red         = "DarkRed        1
 "    let s:magenta     = "DarkMagenta    5
 "    let s:violet      = "LightMagenta   5*
 "    let s:blue        = "DarkBlue       4
 "    let s:cyan        = "DarkCyan       6
 "    let s:green       = "DarkGreen      2

" endif
" "}}}
 " Formatting options and null values for passthrough effect "{{{
 " ---------------------------------------------------------------------
 "    let s:none            = "NONE"
 "    let s:none            = "NONE"
 "    let s:t_none          = "NONE"
 "    let s:n               = "NONE"
 "    let s:c               = ",undercurl"
 "    let s:r               = ",reverse"
 "    let s:s               = ",standout"
 "    let s:ou              = ""
 "    let s:ob              = ""
" "}}}
 " Background value based on termtrans setting "{{{
 " ---------------------------------------------------------------------
" if (has("gui_running") || g:solarized_termtrans == 0)
 "    let s:back        = #002b36
" else
 "    let s:back        = "NONE"
" endif
" "}}}
 " Alternate light scheme "{{{
 " ---------------------------------------------------------------------
" if &background == "light"
 "    let s:temp03      = #002b36
 "    let s:temp02      = #073642
 "    let s:temp01      = s:base01
 "    let s:temp00      = s:base00
 "    let #002b36      = s:base3
 "    let #073642      = s:base2
 "    let s:base01      = s:base1
 "    let s:base00      = s:base0
 "    let s:base0       = s:temp00
 "    let s:base1       = s:temp01
 "    let s:base2       = s:temp02
 "    let s:base3       = s:temp03
 "    if (s:back != "NONE")
 "        let s:back    = #002b36
 "    endif
" endif
" "}}}
 " Optional contrast schemes "{{{
 " ---------------------------------------------------------------------
" if g:solarized_contrast == "high"
 "    let s:base01      = s:base00
 "    let s:base00      = s:base0
 "    let s:base0       = s:base1
 "    let s:base1       = s:base2
 "    let s:base2       = s:base3
 "    let s:back        = s:back
" endif
" if g:solarized_contrast == "low"
 "    let s:back        = #073642
 "    let s:ou          = ",underline"
" endif
" "}}}
 " Overrides dependent on user specified values and environment "{{{
 " ---------------------------------------------------------------------
" if (g:solarized_bold == 0 || &t_Co == 8 )
 "    let s:b           = ""
 "    let s:bb          = ",bold"
" else
 "    let s:b           = ",bold"
 "    let s:bb          = ""
" endif

" if g:solarized_underline == 0
 "    let s:u           = ""
" else
 "    let s:u           = ",underline"
" endif

" if g:solarized_italic == 0 || s:terminal_italic == 0
 "    let s:i           = ""
" else
 "    let s:i           = ",italic"
" endif
" "}}}
 " Highlighting primitives"{{{
 " ---------------------------------------------------------------------

" exe "let s:bg_none      = ctermbg= s:none   "'"
" exe "let guibg=#002b36 ctermbg=234      = ctermbg= s:back   "'"
" exe "let guibg=#839496 ctermbg=244    = ctermbg= #002b36 "'"
" exe "let guibg=#839496 ctermbg=244    = ctermbg= #073642 "'"
" exe "let guibg=#586e75 ctermbg=239    = ctermbg= s:base01 "'"
" exe "let guibg=#839496 ctermbg=244    = ctermbg= s:base00 "'"
" exe "let guibg=#839496 ctermbg=244     = ctermbg= s:base0  "'"
" exe "let s:bg_base1     = ctermbg= s:base1  "'"
" exe "let guibg=#eee8d5 ctermbg=187     = ctermbg= s:base2  "'"
" exe "let s:bg_base3     = ctermbg= s:base3  "'"
" exe "let s:bg_green     = ctermbg= s:green  "'"
" exe "let s:bg_yellow    = ctermbg= s:yellow "'"
" exe "let s:bg_orange    = ctermbg= s:orange "'"
" exe "let s:bg_red       = ctermbg= s:red    "'"
" exe "let s:bg_magenta   = ctermbg= s:magenta "'"
" exe "let s:bg_violet    = ctermbg= s:violet "'"
" exe "let s:bg_blue      = ctermbg= s:blue   "'"
" exe "let s:bg_cyan      = ctermbg= s:cyan   "'"

" exe "let guifg=NONE ctermfg=NONE      = '  s:vmode "fg= s:none   "'"
" exe "let s:fg_back      = '  s:vmode "fg= s:back   "'"
" exe "let guifg=#839496 ctermfg=244    = '  s:vmode "fg= #002b36 "'"
" exe "let guifg=#839496 ctermfg=244    = '  s:vmode "fg= #073642 "'"
" exe "let guifg=#586e75 ctermfg=239    = '  s:vmode "fg= s:base01 "'"
" exe "let guifg=#839496 ctermfg=244    = '  s:vmode "fg= s:base00 "'"
" exe "let guifg=#839496 ctermfg=244     = '  s:vmode "fg= s:base0  "'"
" exe "let guifg=#93a1a1 ctermfg=245     = '  s:vmode "fg= s:base1  "'"
" exe "let guifg=#eee8d5 ctermfg=187     = '  s:vmode "fg= s:base2  "'"
" exe "let s:fg_base3     = '  s:vmode "fg= s:base3  "'"
" exe "let guifg=#719e07 ctermfg=64     = '  s:vmode "fg= s:green  "'"
" exe "let guibg=#b58900 ctermbg=136    = '  s:vmode "fg= s:yellow "'"
" exe "let guifg=#cb4b16 ctermfg=166    = '  s:vmode "fg= s:orange "'"
" exe "let guifg=#dc322f ctermfg=124       = '  s:vmode "fg= s:red    "'"
" exe "let guifg=#d33682 ctermfg=125   = '  s:vmode "fg= s:magenta "'"
" exe "let guifg=#6c71c4 ctermfg=61    = '  s:vmode "fg= s:violet "'"
" exe "let guifg=#268bd2 ctermfg=33      = '  s:vmode "fg= s:blue   "'"
" exe "let guifg=#2aa198 ctermfg=37      = '  s:vmode "fg= s:cyan   "'"

" exe "let gui=NONE cterm=NONE     = '  s:vmode "=NONE            term=NONE     "'"
" exe "let gui=NONE,bold cterm=NONE,bold     = '  s:vmode "=NONE s:b        term=NONE s:b "'"
" exe "let gui=NONE,bold cterm=NONE,bold     = '  s:vmode "=NONE s:b        term=NONE s:b "'"
" exe "let gui=underline cterm=underline     = '  s:vmode "=NONE s:u        term=NONE s:u "'"
" exe "let gui=NONE,underline,bold cterm=NONE,underline,bold     = '  s:vmode "=NONE s:u s:b    term=NONE s:u s:b "'"
" exe "let gui=NONE,underline cterm=NONE,underline     = '  s:vmode "=NONE s:u        term=NONE s:u "'"
" exe "let gui= cterm=     = '  s:vmode "=NONE s:ou       term=NONE s:ou "'"
" exe "let gui=NONE,undercurl     = '  s:vmode "=NONE s:c        term=NONE s:c "'"
" exe "let gui=italic cterm=italic     = '  s:vmode "=NONE s:i        term=NONE s:i "'"
" exe "let gui=NONE,standout cterm=NONE,standout     = '  s:vmode "=NONE s:s        term=NONE s:s "'"
" exe "let gui=reverse cterm=reverse     = '  s:vmode "=NONE s:r        term=NONE s:r "'"
" exe "let gui=NONE,reverse,bold cterm=NONE,reverse,bold     = '  s:vmode "=NONE s:r s:b    term=NONE s:r s:b "'"
 " revbb (reverse bold for bright colors) is only set to actual bold in low
 " color terminals (t_co=8, such as OS X Terminal app) and should only be used
 " with colors 8-15.
" exe "let gui=NONE,reverse cterm=NONE,reverse   = '  s:vmode "=NONE s:r s:bb     term=NONE s:r s:bb "'"
" exe "let gui=NONE,reverse,underline cterm=NONE,reverse,underline   = '  s:vmode "=NONE s:r s:bb s:u  term=NONE s:r s:bb s:u "'"

" if has("gui_running")
 "    exe "let s:sp_none      = ' guisp= s:none   "'"
 "    exe "let s:sp_back      = ' guisp= s:back   "'"
 "    exe "let s:sp_base03    = ' guisp= #002b36 "'"
 "    exe "let s:sp_base02    = ' guisp= #073642 "'"
 "    exe "let s:sp_base01    = ' guisp= s:base01 "'"
 "    exe "let s:sp_base00    = ' guisp= s:base00 "'"
 "    exe "let s:sp_base0     = ' guisp= s:base0  "'"
 "    exe "let s:sp_base1     = ' guisp= s:base1  "'"
 "    exe "let s:sp_base2     = ' guisp= s:base2  "'"
 "    exe "let s:sp_base3     = ' guisp= s:base3  "'"
 "    exe "let s:sp_green     = ' guisp= s:green  "'"
 "    exe "let s:sp_yellow    = ' guisp= s:yellow "'"
 "    exe "let s:sp_orange    = ' guisp= s:orange "'"
 "    exe "let s:sp_red       = ' guisp= s:red    "'"
 "    exe "let s:sp_magenta   = ' guisp= s:magenta "'"
 "    exe "let s:sp_violet    = ' guisp= s:violet "'"
 "    exe "let s:sp_blue      = ' guisp= s:blue   "'"
 "    exe "let s:sp_cyan      = ' guisp= s:cyan   "'"
" else
 "    let s:sp_none      = ""
 "    let s:sp_back      = ""
 "    let s:sp_base03    = ""
 "    let s:sp_base02    = ""
 "    let s:sp_base01    = ""
 "    let s:sp_base00    = ""
 "    let s:sp_base0     = ""
 "    let s:sp_base1     = ""
 "    let s:sp_base2     = ""
 "    let s:sp_base3     = ""
 "    let s:sp_green     = ""
 "    let s:sp_yellow    = ""
 "    let s:sp_orange    = ""
 "    let s:sp_red       = ""
 "    let s:sp_magenta   = ""
 "    let s:sp_violet    = ""
 "    let s:sp_blue      = ""
 "    let s:sp_cyan      = ""
" endif

hi Normal         cterm=NONE gui=NONE   guifg=#839496 ctermfg=244  guibg=#002b36 ctermbg=234

hi Comment        gui=italic cterm=italic   guifg=#586e75 ctermfg=239 ctermbg=NONE guibg=NONE

hi Constant       cterm=NONE gui=NONE   guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE

hi Identifier     cterm=NONE gui=NONE   guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE

hi Statement      cterm=NONE gui=NONE   guifg=#719e07 ctermfg=64  ctermbg=NONE guibg=NONE

hi PreProc        cterm=NONE gui=NONE   guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE

hi Type           cterm=NONE gui=NONE   guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE

hi Special        cterm=NONE gui=NONE   guifg=#dc322f ctermfg=124    ctermbg=NONE guibg=NONE

hi Underlined     cterm=NONE gui=NONE   guifg=#6c71c4 ctermfg=61 ctermbg=NONE guibg=NONE

hi Ignore         cterm=NONE gui=NONE   guifg=NONE ctermfg=NONE   ctermbg=NONE guibg=NONE

hi Error          gui=bold cterm=bold   guifg=#dc322f ctermfg=124    ctermbg=NONE guibg=NONE

hi Todo           gui=bold cterm=bold   guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE

hi SpecialKey gui=bold cterm=bold   guifg=#839496 ctermfg=244 guibg=#839496 ctermbg=244
hi NonText    gui=bold cterm=bold   guifg=#839496 ctermfg=244 ctermbg=NONE guibg=NONE
hi StatusLine     cterm=NONE gui=NONE   guifg=#93a1a1 ctermfg=245  guibg=#839496 ctermbg=244 gui=NONE,reverse cterm=NONE,reverse
hi StatusLineNC   cterm=NONE gui=NONE   guifg=#839496 ctermfg=244 guibg=#839496 ctermbg=244 gui=NONE,reverse cterm=NONE,reverse
hi Visual         cterm=NONE gui=NONE   guifg=#586e75 ctermfg=239 guibg=#839496 ctermbg=244 gui=NONE,reverse cterm=NONE,reverse
hi Directory      cterm=NONE gui=NONE   guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE
hi ErrorMsg       gui=reverse cterm=reverse   guifg=#dc322f ctermfg=124    ctermbg=NONE guibg=NONE
hi IncSearch      gui=NONE,standout cterm=NONE,standout   guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE
hi Search         gui=reverse cterm=reverse   guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE
hi MoreMsg        cterm=NONE gui=NONE   guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE
hi ModeMsg        cterm=NONE gui=NONE   guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE
hi LineNr         cterm=NONE gui=NONE   guifg=#586e75 ctermfg=239 guibg=#839496 ctermbg=244
hi Question       gui=bold cterm=bold   guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE
hi VertSplit  cterm=NONE gui=NONE   guifg=#839496 ctermfg=244 guibg=#839496 ctermbg=244
hi Title          gui=bold cterm=bold   guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE
hi VisualNOS      gui=NONE,standout cterm=NONE,standout   guifg=NONE ctermfg=NONE   guibg=#839496 ctermbg=244 gui=NONE,reverse cterm=NONE,reverse
hi WarningMsg     gui=bold cterm=bold   guifg=#dc322f ctermfg=124    ctermbg=NONE guibg=NONE
hi WildMenu       cterm=NONE gui=NONE   guifg=#eee8d5 ctermfg=187  guibg=#839496 ctermbg=244 gui=NONE,reverse cterm=NONE,reverse
hi Folded         gui=NONE,underline,bold cterm=NONE,underline,bold   guifg=#839496 ctermfg=244  guibg=#839496 ctermbg=244
hi FoldColumn     cterm=NONE gui=NONE   guifg=#839496 ctermfg=244  guibg=#839496 ctermbg=244

hi DiffAdd        cterm=NONE gui=NONE   guifg=#719e07 ctermfg=64  guibg=#839496 ctermbg=244
hi DiffChange     cterm=NONE gui=NONE   guibg=#b58900 ctermbg=136 guibg=#839496 ctermbg=244
hi DiffDelete     cterm=NONE gui=NONE   guifg=#dc322f ctermfg=124    guibg=#839496 ctermbg=244
hi DiffText       cterm=NONE gui=NONE   guifg=#268bd2 ctermfg=33   guibg=#839496 ctermbg=244

hi SignColumn     cterm=NONE gui=NONE   guifg=#839496 ctermfg=244
hi Conceal        cterm=NONE gui=NONE   guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE
hi SpellBad       gui=NONE,undercurl   guifg=NONE ctermfg=NONE   ctermbg=NONE guibg=NONE
hi SpellCap       gui=NONE,undercurl   guifg=NONE ctermfg=NONE   ctermbg=NONE guibg=NONE
hi SpellRare      gui=NONE,undercurl   guifg=NONE ctermfg=NONE   ctermbg=NONE guibg=NONE
hi SpellLocal     gui=NONE,undercurl   guifg=NONE ctermfg=NONE   ctermbg=NONE guibg=NONE
hi Pmenu          cterm=NONE gui=NONE   guifg=#839496 ctermfg=244  guibg=#839496 ctermbg=244
hi PmenuSel       cterm=NONE gui=NONE   guifg=#586e75 ctermfg=239 guibg=#eee8d5 ctermbg=187
hi PmenuSbar      cterm=NONE gui=NONE   guifg=#eee8d5 ctermfg=187  guibg=#839496 ctermbg=244
hi PmenuThumb     cterm=NONE gui=NONE   guifg=#839496 ctermfg=244  guibg=#839496 ctermbg=244
hi TabLine        gui=underline cterm=underline   guifg=#839496 ctermfg=244  guibg=#839496 ctermbg=244
hi TabLineFill    gui=underline cterm=underline   guifg=#839496 ctermfg=244  guibg=#839496 ctermbg=244
hi TabLineSel     gui=underline cterm=underline   guifg=#586e75 ctermfg=239 guibg=#eee8d5 ctermbg=187     gui=NONE,reverse,underline cterm=NONE,reverse,underline
hi CursorColumn   cterm=NONE gui=NONE   guifg=NONE ctermfg=NONE   guibg=#839496 ctermbg=244
hi CursorLine     guifg=NONE ctermfg=NONE   guibg=#839496 ctermbg=244
hi ColorColumn    cterm=NONE gui=NONE   guifg=NONE ctermfg=NONE   guibg=#839496 ctermbg=244
hi Cursor         cterm=NONE gui=NONE   guifg=#839496 ctermfg=244 guibg=#839496 ctermbg=244
hi link lCursor Cursor
hi MatchParen     gui=bold cterm=bold   guifg=#dc322f ctermfg=124    guibg=#586e75 ctermbg=239

hi link vimVar Identifier
hi link vimFunc Function
hi link vimUserFunc Function
hi link helpSpecial Special
hi link vimSet Normal
hi link vimSetEqual Normal
hi vimCommentString  cterm=NONE gui=NONE    guifg=#6c71c4 ctermfg=61 ctermbg=NONE guibg=NONE
hi vimCommand        cterm=NONE gui=NONE    guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE
hi vimCmdSep         gui=bold cterm=bold    guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE
hi helpExample       cterm=NONE gui=NONE    guifg=#93a1a1 ctermfg=245  ctermbg=NONE guibg=NONE
hi helpOption        cterm=NONE gui=NONE    guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE
hi helpNote          cterm=NONE gui=NONE    guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE
hi helpVim           cterm=NONE gui=NONE    guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE
hi helpHyperTextJump gui=underline cterm=underline    guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE
hi helpHyperTextEntry cterm=NONE gui=NONE    guifg=#719e07 ctermfg=64  ctermbg=NONE guibg=NONE
hi vimIsCommand      cterm=NONE gui=NONE    guifg=#839496 ctermfg=244 ctermbg=NONE guibg=NONE
hi vimSynMtchOpt     cterm=NONE gui=NONE    guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE
hi vimSynType        cterm=NONE gui=NONE    guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE
hi vimHiLink         cterm=NONE gui=NONE    guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE
hi vimHiGroup        cterm=NONE gui=NONE    guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE
hi vimGroup          gui=NONE,underline,bold cterm=NONE,underline,bold    guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE

hi link diffAdded Statement
hi link diffLine Identifier

hi gitcommitComment      gui=italic cterm=italic     guifg=#586e75 ctermfg=239    ctermbg=NONE guibg=NONE
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected  gitcommitComment
hi gitcommitUnmerged     gui=bold cterm=bold     guifg=#719e07 ctermfg=64     ctermbg=NONE guibg=NONE
hi gitcommitOnBranch     gui=bold cterm=bold     guifg=#586e75 ctermfg=239    ctermbg=NONE guibg=NONE
hi gitcommitBranch       gui=bold cterm=bold     guifg=#d33682 ctermfg=125   ctermbg=NONE guibg=NONE
hi link gitcommitNoBranch gitcommitBranch
hi gitcommitDiscardedType cterm=NONE gui=NONE     guifg=#dc322f ctermfg=124       ctermbg=NONE guibg=NONE
hi gitcommitSelectedType cterm=NONE gui=NONE     guifg=#719e07 ctermfg=64     ctermbg=NONE guibg=NONE
hi gitcommitHeader       cterm=NONE gui=NONE     guifg=#586e75 ctermfg=239    ctermbg=NONE guibg=NONE
hi gitcommitUntrackedFile gui=bold cterm=bold     guifg=#2aa198 ctermfg=37      ctermbg=NONE guibg=NONE
hi gitcommitDiscardedFile gui=bold cterm=bold     guifg=#dc322f ctermfg=124       ctermbg=NONE guibg=NONE
hi gitcommitSelectedFile gui=bold cterm=bold     guifg=#719e07 ctermfg=64     ctermbg=NONE guibg=NONE
hi gitcommitUnmergedFile gui=bold cterm=bold     guibg=#b58900 ctermbg=136    ctermbg=NONE guibg=NONE
hi gitcommitFile         gui=bold cterm=bold     guifg=#839496 ctermfg=244     ctermbg=NONE guibg=NONE
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

hi htmlTag           cterm=NONE gui=NONE guifg=#586e75 ctermfg=239 ctermbg=NONE guibg=NONE
hi htmlEndTag        cterm=NONE gui=NONE guifg=#586e75 ctermfg=239 ctermbg=NONE guibg=NONE
hi htmlTagN          gui=bold cterm=bold guifg=#93a1a1 ctermfg=245  ctermbg=NONE guibg=NONE
hi htmlTagName       gui=bold cterm=bold guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE
hi htmlSpecialTagName gui=italic cterm=italic guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE
hi htmlArg           cterm=NONE gui=NONE guifg=#839496 ctermfg=244 ctermbg=NONE guibg=NONE
hi javaScript        cterm=NONE gui=NONE guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE

hi perlHereDoc     guifg=#93a1a1 ctermfg=245  guibg=#002b36 ctermbg=234   cterm=NONE gui=NONE
hi perlVarPlain    guibg=#b58900 ctermbg=136 guibg=#002b36 ctermbg=234   cterm=NONE gui=NONE
hi perlStatementFileDesc  guifg=#2aa198 ctermfg=37 guibg=#002b36 ctermbg=234 cterm=NONE gui=NONE

hi texStatement    guifg=#2aa198 ctermfg=37   guibg=#002b36 ctermbg=234   cterm=NONE gui=NONE
hi texMathZoneX    guibg=#b58900 ctermbg=136 guibg=#002b36 ctermbg=234   cterm=NONE gui=NONE
hi texMathMatcher  guibg=#b58900 ctermbg=136 guibg=#002b36 ctermbg=234   cterm=NONE gui=NONE
hi texMathMatcher  guibg=#b58900 ctermbg=136 guibg=#002b36 ctermbg=234   cterm=NONE gui=NONE
hi texRefLabel     guibg=#b58900 ctermbg=136 guibg=#002b36 ctermbg=234   cterm=NONE gui=NONE

hi rubyDefine      guifg=#93a1a1 ctermfg=245  guibg=#002b36 ctermbg=234   gui=bold cterm=bold

hi cPreCondit  guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE

hi VarId     guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi ConId     guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi hsImport  guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi hsString  guifg=#839496 ctermfg=244 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE

hi hsStructure         guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi hs_hlFunctionName   guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE
hi hsStatement         guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi hsImportLabel       guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi hs_OpFunctionName   guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi hs_DeclareFunction  guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi hsVarSym            guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi hsType              guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi hsTypedef           guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi hsModuleName        guifg=#719e07 ctermfg=64  ctermbg=NONE guibg=NONE   gui=underline cterm=underline
hi hsModuleStartLabel  guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi link hsImportParams      Delimiter
hi link hsDelimTypeExport   Delimiter
hi link hsModuleStartLabel  hsStructure
hi link hsModuleWhereLabel  hsModuleStartLabel

hi hsNiceOperator      guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi hsniceoperator      guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE

hi pandocTitleBlock               guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocTitleBlockTitle          guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   gui=bold cterm=bold
hi pandocTitleComment             guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   gui=bold cterm=bold
hi pandocComment                  guifg=#586e75 ctermfg=239 ctermbg=NONE guibg=NONE   gui=italic cterm=italic
hi pandocVerbatimBlock            guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi link pandocVerbatimBlockDeep         pandocVerbatimBlock
hi link pandocCodeBlock                 pandocVerbatimBlock
hi link pandocCodeBlockDelim            pandocVerbatimBlock
hi pandocBlockQuote               guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocBlockQuoteLeader1        guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocBlockQuoteLeader2        guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocBlockQuoteLeader3        guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocBlockQuoteLeader4        guifg=#dc322f ctermfg=124    ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocBlockQuoteLeader5        guifg=#839496 ctermfg=244  ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocBlockQuoteLeader6        guifg=#586e75 ctermfg=239 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocListMarker               guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocListReference            guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE   gui=underline cterm=underline

hi pandocDefinitionBlock              guifg=#6c71c4 ctermfg=61  ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE
hi pandocDefinitionTerm               guifg=#6c71c4 ctermfg=61  ctermbg=NONE guibg=NONE  gui=NONE,standout cterm=NONE,standout
hi pandocDefinitionIndctr             guifg=#6c71c4 ctermfg=61  ctermbg=NONE guibg=NONE  gui=bold cterm=bold
hi pandocEmphasisDefinition           guifg=#6c71c4 ctermfg=61  ctermbg=NONE guibg=NONE  gui=italic cterm=italic
hi pandocEmphasisNestedDefinition     guifg=#6c71c4 ctermfg=61  ctermbg=NONE guibg=NONE  gui=NONE,bold cterm=NONE,bold
hi pandocStrongEmphasisDefinition     guifg=#6c71c4 ctermfg=61  ctermbg=NONE guibg=NONE  gui=bold cterm=bold
hi pandocStrongEmphasisNestedDefinition   guifg=#6c71c4 ctermfg=61 ctermbg=NONE guibg=NONE gui=NONE,bold cterm=NONE,bold
hi pandocStrongEmphasisEmphasisDefinition guifg=#6c71c4 ctermfg=61 ctermbg=NONE guibg=NONE gui=NONE,bold cterm=NONE,bold
hi pandocStrikeoutDefinition          guifg=#6c71c4 ctermfg=61  ctermbg=NONE guibg=NONE  gui=reverse cterm=reverse
hi pandocVerbatimInlineDefinition     guifg=#6c71c4 ctermfg=61  ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE
hi pandocSuperscriptDefinition        guifg=#6c71c4 ctermfg=61  ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE
hi pandocSubscriptDefinition          guifg=#6c71c4 ctermfg=61  ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE

hi pandocTable                        guifg=#268bd2 ctermfg=33 ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE
hi pandocTableStructure               guifg=#268bd2 ctermfg=33 ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE
hi link pandocTableStructureTop             pandocTableStructre
hi link pandocTableStructureEnd             pandocTableStructre
hi pandocTableZebraLight              guifg=#268bd2 ctermfg=33 guibg=#839496 ctermbg=244 cterm=NONE gui=NONE
hi pandocTableZebraDark               guifg=#268bd2 ctermfg=33 guibg=#839496 ctermbg=244 cterm=NONE gui=NONE
hi pandocEmphasisTable                guifg=#268bd2 ctermfg=33 ctermbg=NONE guibg=NONE  gui=italic cterm=italic
hi pandocEmphasisNestedTable          guifg=#268bd2 ctermfg=33 ctermbg=NONE guibg=NONE  gui=NONE,bold cterm=NONE,bold
hi pandocStrongEmphasisTable          guifg=#268bd2 ctermfg=33 ctermbg=NONE guibg=NONE  gui=bold cterm=bold
hi pandocStrongEmphasisNestedTable    guifg=#268bd2 ctermfg=33 ctermbg=NONE guibg=NONE  gui=NONE,bold cterm=NONE,bold
hi pandocStrongEmphasisEmphasisTable  guifg=#268bd2 ctermfg=33 ctermbg=NONE guibg=NONE  gui=NONE,bold cterm=NONE,bold
hi pandocStrikeoutTable               guifg=#268bd2 ctermfg=33 ctermbg=NONE guibg=NONE  gui=reverse cterm=reverse
hi pandocVerbatimInlineTable          guifg=#268bd2 ctermfg=33 ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE
hi pandocSuperscriptTable             guifg=#268bd2 ctermfg=33 ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE
hi pandocSubscriptTable               guifg=#268bd2 ctermfg=33 ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE

hi pandocHeading                      guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE gui=bold cterm=bold
hi pandocHeadingMarker                guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE gui=bold cterm=bold
hi pandocEmphasisHeading              guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE gui=NONE,bold cterm=NONE,bold
hi pandocEmphasisNestedHeading        guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE gui=NONE,bold cterm=NONE,bold
hi pandocStrongEmphasisHeading        guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE gui=bold cterm=bold
hi pandocStrongEmphasisNestedHeading  guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE gui=NONE,bold cterm=NONE,bold
hi pandocStrongEmphasisEmphasisHeading guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE gui=NONE,bold cterm=NONE,bold
hi pandocStrikeoutHeading             guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE gui=reverse cterm=reverse
hi pandocVerbatimInlineHeading        guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE gui=bold cterm=bold
hi pandocSuperscriptHeading           guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE gui=bold cterm=bold
hi pandocSubscriptHeading             guifg=#cb4b16 ctermfg=166 ctermbg=NONE guibg=NONE gui=bold cterm=bold

hi pandocLinkDelim                guifg=#586e75 ctermfg=239 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocLinkLabel                guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   gui=underline cterm=underline
hi pandocLinkText                 guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   gui=NONE,underline,bold cterm=NONE,underline,bold
hi pandocLinkURL                  guifg=#839496 ctermfg=244 ctermbg=NONE guibg=NONE   gui=underline cterm=underline
hi pandocLinkTitle                guifg=#839496 ctermfg=244 ctermbg=NONE guibg=NONE   gui=NONE,underline cterm=NONE,underline
hi pandocLinkTitleDelim           guifg=#586e75 ctermfg=239 ctermbg=NONE guibg=NONE   gui=NONE,underline cterm=NONE,underline
hi pandocLinkDefinition           guifg=#2aa198 ctermfg=37   ctermbg=NONE guibg=NONE   gui=underline cterm=underline
hi pandocLinkDefinitionID         guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   gui=bold cterm=bold
hi pandocImageCaption             guifg=#6c71c4 ctermfg=61 ctermbg=NONE guibg=NONE   gui=NONE,underline,bold cterm=NONE,underline,bold
hi pandocFootnoteLink             guifg=#719e07 ctermfg=64  ctermbg=NONE guibg=NONE   gui=underline cterm=underline
hi pandocFootnoteDefLink          guifg=#719e07 ctermfg=64  ctermbg=NONE guibg=NONE   gui=bold cterm=bold
hi pandocFootnoteInline           guifg=#719e07 ctermfg=64  ctermbg=NONE guibg=NONE   gui=NONE,underline,bold cterm=NONE,underline,bold
hi pandocFootnote                 guifg=#719e07 ctermfg=64  ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocCitationDelim            guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocCitation                 guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocCitationID               guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE   gui=underline cterm=underline
hi pandocCitationRef              guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE

hi pandocStyleDelim               guifg=#586e75 ctermfg=239 ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE
hi pandocEmphasis                 guifg=#839496 ctermfg=244  ctermbg=NONE guibg=NONE  gui=italic cterm=italic
hi pandocEmphasisNested           guifg=#839496 ctermfg=244  ctermbg=NONE guibg=NONE  gui=NONE,bold cterm=NONE,bold
hi pandocStrongEmphasis           guifg=#839496 ctermfg=244  ctermbg=NONE guibg=NONE  gui=bold cterm=bold
hi pandocStrongEmphasisNested     guifg=#839496 ctermfg=244  ctermbg=NONE guibg=NONE  gui=NONE,bold cterm=NONE,bold
hi pandocStrongEmphasisEmphasis   guifg=#839496 ctermfg=244  ctermbg=NONE guibg=NONE  gui=NONE,bold cterm=NONE,bold
hi pandocStrikeout                guifg=#586e75 ctermfg=239 ctermbg=NONE guibg=NONE  gui=reverse cterm=reverse
hi pandocVerbatimInline           guibg=#b58900 ctermbg=136 ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE
hi pandocSuperscript              guifg=#6c71c4 ctermfg=61 ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE
hi pandocSubscript                guifg=#6c71c4 ctermfg=61 ctermbg=NONE guibg=NONE  cterm=NONE gui=NONE

hi pandocRule                     guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE  gui=bold cterm=bold
hi pandocRuleLine                 guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE  gui=bold cterm=bold
hi pandocEscapePair               guifg=#dc322f ctermfg=124    ctermbg=NONE guibg=NONE  gui=bold cterm=bold
hi pandocCitationRef              guifg=#d33682 ctermfg=125 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocNonBreakingSpace          guifg=#dc322f ctermfg=124   ctermbg=NONE guibg=NONE  gui=reverse cterm=reverse
hi link pandocEscapedCharacter          pandocEscapePair
hi link pandocLineBreak                 pandocEscapePair

hi pandocMetadataDelim            guifg=#586e75 ctermfg=239 ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocMetadata                 guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocMetadataKey              guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   cterm=NONE gui=NONE
hi pandocMetadata                 guifg=#268bd2 ctermfg=33   ctermbg=NONE guibg=NONE   gui=bold cterm=bold
hi link pandocMetadataTitle             pandocMetadata
