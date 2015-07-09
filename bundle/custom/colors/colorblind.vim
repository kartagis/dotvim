" colorblind.vim -- Vim color scheme.
" Author:      Romain Lafourcade (romainlafourcade@gmail.com)
" Description: A 'dark' colorscheme for( color blind)* vimmers.

hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'colorblind'

if &t_Co >= 256 || has('gui_running')
    hi Normal ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#FFFFFF gui=NONE
    hi NonText ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi Comment ctermbg=NONE ctermfg=100 cterm=NONE guibg=NONE guifg=#878700 gui=NONE
    hi Constant ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi Error ctermbg=186 ctermfg=186 cterm=reverse guibg=#DFDF87 guifg=#DFDF87 gui=reverse
    hi Identifier ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi PreProc ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi Special ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi Statement ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi String ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse
    hi Type ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi Underlined ctermbg=NONE ctermfg=186 cterm=underline guibg=NONE guifg=#DFDF87 gui=underline
    hi StatusLine ctermbg=15 ctermfg=0 cterm=NONE guibg=#FFFFFF guifg=#000000 gui=NONE
    hi StatusLineNC ctermbg=0 ctermfg=NONE cterm=NONE guibg=#000000 guifg=NONE gui=NONE
    hi VertSplit ctermbg=0 ctermfg=0 cterm=NONE guibg=#000000 guifg=#000000 gui=NONE
    hi TabLine ctermbg=0 ctermfg=15 cterm=NONE guibg=#000000 guifg=#FFFFFF gui=NONE
    hi TabLineFill ctermbg=0 ctermfg=0 cterm=NONE guibg=#000000 guifg=#000000 gui=NONE
    hi TabLineSel ctermbg=15 ctermfg=0 cterm=NONE guibg=#FFFFFF guifg=#000000 gui=NONE
    hi Title ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi LineNr ctermbg=NONE ctermfg=167 cterm=NONE guibg=NONE guifg=#D75F5F gui=NONE
    hi Cursor ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi CursorColumn ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi CursorLine ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
    hi CursorLineNr ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi Visual ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi VisualNOS ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi Pmenu ctermbg=186 ctermfg=0 cterm=NONE guibg=#DFDF87 guifg=#000000 gui=NONE
    hi PmenuSbar ctermbg=100 ctermfg=186 cterm=NONE guibg=#878700 guifg=#DFDF87 gui=NONE
    hi PmenuSel ctermbg=0 ctermfg=186 cterm=NONE guibg=#000000 guifg=#DFDF87 gui=NONE
    hi PmenuThumb ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi FoldColumn ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi Folded ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi WildMenu ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi SpecialKey ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi DiffAdd ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi DiffChange ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi DiffDelete ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi DiffText ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi IncSearch ctermbg=186 ctermfg=186 cterm=reverse guibg=#DFDF87 guifg=#DFDF87 gui=reverse
    hi Search ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi Directory ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi MatchParen ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi SpellBad ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE guisp=#DFDF87
    hi SpellCap ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE guisp=#DFDF87
    hi SpellLocal ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE guisp=#DFDF87
    hi SpellRare ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE guisp=#DFDF87
    hi ColorColumn ctermbg=186 ctermfg=NONE cterm=NONE guibg=#DFDF87 guifg=NONE gui=NONE
    hi signColumn ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi ErrorMsg ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi ModeMsg ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi MoreMsg ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi Question ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi WarningMsg ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE

    set background=dark
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=NONE ctermfg=15 cterm=NONE
    hi NonText ctermbg=NONE ctermfg=0 cterm=NONE
    hi Comment ctermbg=NONE ctermfg=0 cterm=NONE
    hi Constant ctermbg=NONE ctermfg=0 cterm=NONE
    hi Error ctermbg=0 ctermfg=0 cterm=reverse
    hi Identifier ctermbg=NONE ctermfg=0 cterm=NONE
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=0 cterm=NONE
    hi Special ctermbg=NONE ctermfg=0 cterm=NONE
    hi Statement ctermbg=NONE ctermfg=0 cterm=NONE
    hi String ctermbg=NONE ctermfg=0 cterm=NONE
    hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse
    hi Type ctermbg=NONE ctermfg=0 cterm=NONE
    hi Underlined ctermbg=NONE ctermfg=0 cterm=underline
    hi StatusLine ctermbg=15 ctermfg=0 cterm=NONE
    hi StatusLineNC ctermbg=0 ctermfg=NONE cterm=NONE
    hi VertSplit ctermbg=0 ctermfg=0 cterm=NONE
    hi TabLine ctermbg=0 ctermfg=15 cterm=NONE
    hi TabLineFill ctermbg=0 ctermfg=0 cterm=NONE
    hi TabLineSel ctermbg=15 ctermfg=0 cterm=NONE
    hi Title ctermbg=NONE ctermfg=0 cterm=NONE
    hi LineNr ctermbg=NONE ctermfg=0 cterm=NONE
    hi Cursor ctermbg=0 ctermfg=0 cterm=NONE
    hi CursorColumn ctermbg=0 ctermfg=0 cterm=NONE
    hi CursorLine ctermbg=NONE ctermfg=NONE cterm=underline
    hi CursorLineNr ctermbg=NONE ctermfg=NONE cterm=underline
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Visual ctermbg=0 ctermfg=0 cterm=NONE
    hi VisualNOS ctermbg=0 ctermfg=0 cterm=NONE
    hi Pmenu ctermbg=0 ctermfg=0 cterm=NONE
    hi PmenuSbar ctermbg=0 ctermfg=0 cterm=NONE
    hi PmenuSel ctermbg=0 ctermfg=0 cterm=NONE
    hi PmenuThumb ctermbg=0 ctermfg=0 cterm=NONE
    hi FoldColumn ctermbg=NONE ctermfg=0 cterm=NONE
    hi Folded ctermbg=0 ctermfg=0 cterm=NONE
    hi WildMenu ctermbg=0 ctermfg=0 cterm=NONE
    hi SpecialKey ctermbg=NONE ctermfg=0 cterm=NONE
    hi DiffAdd ctermbg=0 ctermfg=0 cterm=NONE
    hi DiffChange ctermbg=0 ctermfg=0 cterm=NONE
    hi DiffDelete ctermbg=0 ctermfg=0 cterm=NONE
    hi DiffText ctermbg=0 ctermfg=0 cterm=NONE
    hi IncSearch ctermbg=0 ctermfg=0 cterm=reverse
    hi Search ctermbg=0 ctermfg=0 cterm=NONE
    hi Directory ctermbg=NONE ctermfg=0 cterm=NONE
    hi MatchParen ctermbg=0 ctermfg=0 cterm=NONE
    hi SpellBad ctermbg=NONE ctermfg=0 cterm=NONE
    hi SpellCap ctermbg=NONE ctermfg=0 cterm=NONE
    hi SpellLocal ctermbg=NONE ctermfg=0 cterm=NONE
    hi SpellRare ctermbg=NONE ctermfg=0 cterm=NONE
    hi ColorColumn ctermbg=0 ctermfg=NONE cterm=NONE
    hi signColumn ctermbg=NONE ctermfg=0 cterm=NONE
    hi ErrorMsg ctermbg=0 ctermfg=0 cterm=NONE
    hi ModeMsg ctermbg=0 ctermfg=0 cterm=NONE
    hi MoreMsg ctermbg=0 ctermfg=0 cterm=NONE
    hi Question ctermbg=0 ctermfg=0 cterm=NONE
    hi WarningMsg ctermbg=0 ctermfg=0 cterm=NONE

    set background=dark
endif

" Generated with RNB (https://gist.github.com/romainl/5cd2f4ec222805f49eca)
