" 'apprentice.vim' -- Vim color scheme.
" Maintainer: Romain Lafourcade
" Based on 'Morcerer' by Jeet Sukumaran ()
" Itself based on 'Mustang' by Henrique C. Alves (hcarvalhoalves@gmail.com)

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "apprentice"

hi  Normal              ctermbg=234   ctermfg=145   guibg=#1e1e17  guifg=#afaf87  cterm=NONE            gui=NONE
hi  Boolean             ctermbg=NONE  ctermfg=208   guibg=NONE     guifg=#ffaf54  cterm=NONE            gui=NONE
hi  ColorColumn         ctermbg=234   ctermfg=NONE  guibg=#1e1e17  guifg=NONE     cterm=NONE            gui=NONE
hi  Comment             ctermbg=NONE  ctermfg=240   guibg=NONE     guifg=#75755b  cterm=NONE            gui=italic
hi  Conceal             ctermbg=248   ctermfg=252   guibg=#afaf87  guifg=#ffffdf  cterm=NONE            gui=NONE
hi  Constant            ctermbg=NONE  ctermfg=208   guibg=NONE     guifg=#ff8700  cterm=NONE            gui=NONE
hi  Directory           ctermbg=234   ctermfg=33    guibg=#1e1e17  guifg=#1e90ff  cterm=NONE            gui=NONE
hi  Error               ctermbg=196   ctermfg=231   guibg=#d70000  guifg=#ffffff  cterm=NONE            gui=NONE
hi  Function            ctermbg=NONE  ctermfg=230   guibg=NONE     guifg=#ffffdf  cterm=NONE            gui=NONE
hi  Identifier          ctermbg=NONE  ctermfg=110   guibg=NONE     guifg=#87afd7  cterm=NONE            gui=NONE
hi  Ignore              ctermbg=NONE  ctermfg=234   guibg=NONE     guifg=#1e1e17  cterm=NONE            gui=NONE
hi  IncSearch           ctermbg=202   ctermfg=231   guibg=#d70000  guifg=#ffffff  cterm=bold            gui=bold
hi  Keyword             ctermbg=NONE  ctermfg=110   guibg=NONE     guifg=#87afd7  cterm=NONE            gui=NONE
hi  LineNr              ctermbg=233   ctermfg=59    guibg=#1e1e17  guifg=#75755b  cterm=NONE            gui=NONE
hi  MatchParen          ctermbg=16    ctermfg=226   guibg=#1e1e17  guifg=#ffea54  cterm=bold            gui=bold
hi  NonText             ctermbg=234   ctermfg=238   guibg=#1e1e17  guifg=#3c3c2e  cterm=NONE            gui=NONE
hi  Number              ctermbg=NONE  ctermfg=172   guibg=NONE     guifg=#ff8700  cterm=NONE            gui=NONE
hi  PreProc             ctermbg=NONE  ctermfg=66    guibg=NONE     guifg=#008787  cterm=NONE            gui=NONE
hi  Question            ctermbg=NONE  ctermfg=46    guibg=NONE     guifg=#00ee00  cterm=bold            gui=bold
hi  Search              ctermbg=185   ctermfg=16    guibg=#c9e454  guifg=#1e1e17  cterm=bold            gui=bold
hi  SignColumn          ctermbg=187   ctermfg=231   guibg=#ffffdf  guifg=#ffffff  cterm=NONE            gui=NONE
hi  Special             ctermbg=NONE  ctermfg=64    guibg=NONE     guifg=#759000  cterm=NONE            gui=NONE
hi  SpecialKey          ctermbg=NONE  ctermfg=238   guibg=NONE     guifg=#3c3c2e  cterm=NONE            gui=NONE
hi  Statement           ctermbg=NONE  ctermfg=110   guibg=NONE     guifg=#87afd7  cterm=NONE            gui=NONE
hi  String              ctermbg=NONE  ctermfg=65    guibg=NONE     guifg=#54afaf  cterm=NONE            gui=NONE
hi  Title               ctermbg=NONE  ctermfg=66    guibg=NONE     guifg=#008787  cterm=bold            gui=bold
hi  Todo                ctermbg=234   ctermfg=96    guibg=#1e1e17  guifg=#754075  cterm=bold,underline  gui=bold,italic,underline
hi  Type                ctermbg=NONE  ctermfg=103   guibg=NONE     guifg=#7e8aa2  cterm=NONE            gui=NONE
hi  Underlined          ctermbg=NONE  ctermfg=111   guibg=NONE     guifg=#80a0ff  cterm=underline       gui=underline
hi  VertSplit           ctermbg=59    ctermfg=59    guibg=#75755b  guifg=#75755b  cterm=NONE            gui=NONE
hi  WildMenu            ctermbg=116   ctermfg=16    guibg=#87ceeb  guifg=#1e1e17  cterm=NONE            gui=NONE
hi  Pmenu               ctermbg=238   ctermfg=231   guibg=#3c3c2e  guifg=#ffffff  cterm=NONE            gui=NONE
hi  PmenuSel            ctermbg=149   ctermfg=16    guibg=#afd700  guifg=#1e1e17  cterm=NONE            gui=NONE
hi  PmenuSbar           ctermbg=250   ctermfg=NONE  guibg=#afaf87  guifg=NONE     cterm=NONE            gui=NONE
hi  PmenuThumb          ctermbg=149   ctermfg=149   guibg=#afd700  guifg=#afd700  cterm=NONE            gui=NONE
hi  ErrorMsg            ctermbg=NONE  ctermfg=203   guibg=NONE     guifg=#e45454  cterm=bold            gui=bold
hi  MoreMsg             ctermbg=234   ctermfg=29    guibg=#1e1e17  guifg=#007540  cterm=bold            gui=bold
hi  ModeMsg             ctermbg=46    ctermfg=16    guibg=#00ff00  guifg=#1e1e17  cterm=bold            gui=bold
hi  WarningMsg          ctermbg=234   ctermfg=208   guibg=#1e1e17  guifg=#ffaf54  cterm=NONE            gui=NONE
hi  TabLine             ctermbg=234   ctermfg=59    guibg=#1e1e17  guifg=#75755b  cterm=NONE            gui=NONE
hi  TabLineSel          ctermbg=145   ctermfg=234   guibg=#afaf87  guifg=#1e1e17  cterm=bold            gui=bold
hi  TabLineFill         ctermbg=145   ctermfg=234   guibg=#1e1e17  guifg=#afaf87  cterm=reverse         gui=reverse
hi  Cursor              ctermbg=241   ctermfg=NONE  guibg=#75755b  guifg=NONE     cterm=NONE            gui=NONE
hi  lCursor             ctermbg=145   ctermfg=234   guibg=#afaf87  guifg=#1e1e17  cterm=NONE            gui=NONE
hi  CursorColumn        ctermbg=236   ctermfg=NONE  guibg=#3c3c2e  guifg=NONE     cterm=NONE            gui=NONE
hi  CursorLine          ctermbg=236   ctermfg=NONE  guibg=#3c3c2e  guifg=NONE     cterm=NONE            gui=NONE
hi  helpLeadBlank       ctermbg=NONE  ctermfg=NONE  guibg=NONE     guifg=NONE     cterm=NONE            gui=NONE
hi  helpNormal          ctermbg=NONE  ctermfg=NONE  guibg=NONE     guifg=NONE     cterm=NONE            gui=NONE
hi  StatusLine          ctermbg=101   ctermfg=16    guibg=#afaf87  guifg=#1e1e17  cterm=bold            gui=bold
hi  StatusLineNC        ctermbg=59    ctermfg=16    guibg=#75755b  guifg=#1e1e17  cterm=NONE            gui=italic
hi  Visual              ctermbg=67    ctermfg=16    guibg=#5b7590  guifg=#1e1e17  cterm=NONE            gui=NONE
hi  VisualNOS           ctermbg=NONE  ctermfg=NONE  guibg=NONE     guifg=NONE     cterm=bold,underline  gui=bold,underline
hi  Folded              ctermbg=59    ctermfg=110   guibg=#3c3c2e  guifg=#afc9e4  cterm=NONE            gui=NONE
hi  FoldColumn          ctermbg=236   ctermfg=66    guibg=#1e1e17  guifg=#68838b  cterm=bold            gui=bold
hi  SpellBad            ctermbg=NONE  ctermfg=196   guibg=NONE     guifg=NONE     guisp=#d70000         cterm=undercurl            gui=undercurl
hi  SpellCap            ctermbg=NONE  ctermfg=21    guibg=NONE     guifg=NONE     guisp=#0000ff         cterm=undercurl            gui=undercurl
hi  SpellLocal          ctermbg=NONE  ctermfg=30    guibg=NONE     guifg=NONE     guisp=#008787         cterm=undercurl            gui=undercurl
hi  SpellRare           ctermbg=NONE  ctermfg=201   guibg=NONE     guifg=NONE     guisp=#c994c9         cterm=undercurl            gui=undercurl
hi  diffOldFile         ctermbg=NONE  ctermfg=170   guibg=NONE     guifg=#af5faf  cterm=NONE            gui=italic
hi  diffNewFile         ctermbg=NONE  ctermfg=226   guibg=NONE     guifg=#ffea54  cterm=NONE            gui=italic
hi  diffFile            ctermbg=NONE  ctermfg=214   guibg=NONE     guifg=#ffaf54  cterm=NONE            gui=italic
hi  diffLine            ctermbg=NONE  ctermfg=201   guibg=NONE     guifg=#c994c9  cterm=NONE            gui=italic
hi  diffRemoved         ctermbg=NONE  ctermfg=167   guibg=NONE     guifg=#e45454  cterm=NONE            gui=NONE
hi  diffChanged         ctermbg=NONE  ctermfg=68    guibg=NONE     guifg=#4f94cd  cterm=NONE            gui=NONE
hi  diffAdded           ctermbg=NONE  ctermfg=40    guibg=NONE     guifg=#00cd00  cterm=NONE            gui=NONE
hi  DiffAdd             ctermbg=71    ctermfg=16    guibg=#00af5f  guifg=#1e1e17  cterm=NONE            gui=NONE
hi  DiffChange          ctermbg=68    ctermfg=16    guibg=#4f94cd  guifg=#1e1e17  cterm=NONE            gui=NONE
hi  DiffDelete          ctermbg=94    ctermfg=16    guibg=#5b4040  guifg=#1e1e17  cterm=NONE            gui=NONE
hi  DiffText            ctermbg=117   ctermfg=16    guibg=#54afaf  guifg=#1e1e17  cterm=NONE            gui=NONE
hi  javaScriptOpAssign  ctermbg=NONE  ctermfg=176   guibg=NONE     guifg=#c994c9  cterm=NONE            gui=NONE
hi  pythonDecorator     ctermbg=NONE  ctermfg=101   guibg=NONE     guifg=#888555  cterm=NONE            gui=NONE
hi  pythonException     ctermbg=NONE  ctermfg=110   guibg=NONE     guifg=#87afd7  cterm=NONE            gui=NONE
hi  pythonExClass       ctermbg=NONE  ctermfg=95    guibg=NONE     guifg=#875f5f  cterm=NONE            gui=NONE
hi  htmlLink            ctermbg=NONE  ctermfg=NONE  guibg=NONE     guifg=NONE     cterm=NONE            gui=NONE
hi  htmlArg             ctermbg=NONE  ctermfg=103   guibg=NONE     guifg=#7e8aa2  cterm=NONE            gui=NONE
hi  htmlTag             ctermbg=NONE  ctermfg=110   guibg=NONE     guifg=#87afd7  cterm=NONE            gui=NONE
hi  htmlSpecialTagName  ctermbg=NONE  ctermfg=110   guibg=NONE     guifg=#87afd7  cterm=NONE            gui=NONE
hi  htmlTagName         ctermbg=NONE  ctermfg=110   guibg=NONE     guifg=#87afd7  cterm=NONE            gui=NONE
hi  htmlEndTag          ctermbg=NONE  ctermfg=110   guibg=NONE     guifg=#87afd7  cterm=NONE            gui=NONE
