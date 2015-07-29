" dichromatic.vim -- Vim color scheme.
" Author:      Romain Lafourcade (romainlafourcade@gmail.com)
" Webpage:     http://www.example.com
" Description: A 'dark' colorscheme for color blind vimmers. But not only.

hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'dichromatic'

if &t_Co >= 256 || has('gui_running')
    hi Normal ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#FFFFFF gui=NONE
    set background=dark
    hi NonText ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi Comment ctermbg=NONE ctermfg=28 cterm=NONE guibg=NONE guifg=#008700 gui=NONE
    hi Constant ctermbg=NONE ctermfg=168 cterm=NONE guibg=NONE guifg=#D75F87 gui=NONE
    hi Error ctermbg=89 ctermfg=186 cterm=reverse guibg=#87005F guifg=#DFDF87 gui=reverse
    hi Identifier ctermbg=NONE ctermfg=133 cterm=NONE guibg=NONE guifg=#AF5FAF gui=NONE
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi PreProc ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi Special ctermbg=NONE ctermfg=15 cterm=NONE guibg=NONE guifg=#FFFFFF gui=NONE
    hi Statement ctermbg=NONE ctermfg=133 cterm=NONE guibg=NONE guifg=#AF5FAF gui=NONE
    hi String ctermbg=NONE ctermfg=142 cterm=NONE guibg=NONE guifg=#AFAF00 gui=NONE
    hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse
    hi Type ctermbg=NONE ctermfg=116 cterm=NONE guibg=NONE guifg=#87D7D7 gui=NONE
    hi Underlined ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
    hi StatusLine ctermbg=15 ctermfg=0 cterm=NONE guibg=#FFFFFF guifg=#000000 gui=NONE
    hi StatusLineNC ctermbg=0 ctermfg=NONE cterm=NONE guibg=#000000 guifg=NONE gui=NONE
    hi VertSplit ctermbg=0 ctermfg=0 cterm=NONE guibg=#000000 guifg=#000000 gui=NONE
    hi TabLine ctermbg=0 ctermfg=15 cterm=NONE guibg=#000000 guifg=#FFFFFF gui=NONE
    hi TabLineFill ctermbg=0 ctermfg=0 cterm=NONE guibg=#000000 guifg=#000000 gui=NONE
    hi TabLineSel ctermbg=15 ctermfg=0 cterm=NONE guibg=#FFFFFF guifg=#000000 gui=NONE
    hi Title ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi LineNr ctermbg=NONE ctermfg=168 cterm=NONE guibg=NONE guifg=#D75F87 gui=NONE
    hi Cursor ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi CursorColumn ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi CursorLine ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
    hi CursorLineNr ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi Visual ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi VisualNOS ctermbg=186 ctermfg=186 cterm=NONE guibg=#DFDF87 guifg=#DFDF87 gui=NONE
    hi Pmenu ctermbg=186 ctermfg=0 cterm=NONE guibg=#DFDF87 guifg=#000000 gui=NONE
    hi PmenuSbar ctermbg=142 ctermfg=186 cterm=NONE guibg=#AFAF00 guifg=#DFDF87 gui=NONE
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
    hi ColorColumn ctermbg=17 ctermfg=NONE cterm=NONE guibg=#00005F guifg=NONE gui=NONE
    hi signColumn ctermbg=NONE ctermfg=186 cterm=NONE guibg=NONE guifg=#DFDF87 gui=NONE
    hi ErrorMsg ctermbg=89 ctermfg=15 cterm=NONE guibg=#87005F guifg=#FFFFFF gui=NONE
    hi ModeMsg ctermbg=142 ctermfg=0 cterm=NONE guibg=#AFAF00 guifg=#000000 gui=NONE
    hi MoreMsg ctermbg=NONE ctermfg=142 cterm=NONE guibg=NONE guifg=#AFAF00 gui=NONE
    hi Question ctermbg=NONE ctermfg=72 cterm=NONE guibg=NONE guifg=#5FAF87 gui=NONE
    hi WarningMsg ctermbg=168 ctermfg=0 cterm=NONE guibg=#D75F87 guifg=#000000 gui=NONE
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16
    hi Normal ctermbg=NONE ctermfg=white cterm=NONE
    set background=dark
    hi NonText ctermbg=NONE ctermfg=black cterm=NONE
    hi Comment ctermbg=NONE ctermfg=black cterm=NONE
    hi Constant ctermbg=NONE ctermfg=black cterm=NONE
    hi Error ctermbg=black ctermfg=black cterm=reverse
    hi Identifier ctermbg=NONE ctermfg=black cterm=NONE
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=black cterm=NONE
    hi Special ctermbg=NONE ctermfg=white cterm=NONE
    hi Statement ctermbg=NONE ctermfg=black cterm=NONE
    hi String ctermbg=NONE ctermfg=black cterm=NONE
    hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse
    hi Type ctermbg=NONE ctermfg=black cterm=NONE
    hi Underlined ctermbg=NONE ctermfg=NONE cterm=underline
    hi StatusLine ctermbg=white ctermfg=black cterm=NONE
    hi StatusLineNC ctermbg=black ctermfg=NONE cterm=NONE
    hi VertSplit ctermbg=black ctermfg=black cterm=NONE
    hi TabLine ctermbg=black ctermfg=white cterm=NONE
    hi TabLineFill ctermbg=black ctermfg=black cterm=NONE
    hi TabLineSel ctermbg=white ctermfg=black cterm=NONE
    hi Title ctermbg=NONE ctermfg=black cterm=NONE
    hi LineNr ctermbg=NONE ctermfg=black cterm=NONE
    hi Cursor ctermbg=black ctermfg=black cterm=NONE
    hi CursorColumn ctermbg=black ctermfg=black cterm=NONE
    hi CursorLine ctermbg=NONE ctermfg=NONE cterm=underline
    hi CursorLineNr ctermbg=NONE ctermfg=NONE cterm=underline
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Visual ctermbg=black ctermfg=black cterm=NONE
    hi VisualNOS ctermbg=black ctermfg=black cterm=NONE
    hi Pmenu ctermbg=black ctermfg=black cterm=NONE
    hi PmenuSbar ctermbg=black ctermfg=black cterm=NONE
    hi PmenuSel ctermbg=black ctermfg=black cterm=NONE
    hi PmenuThumb ctermbg=black ctermfg=black cterm=NONE
    hi FoldColumn ctermbg=NONE ctermfg=black cterm=NONE
    hi Folded ctermbg=black ctermfg=black cterm=NONE
    hi WildMenu ctermbg=black ctermfg=black cterm=NONE
    hi SpecialKey ctermbg=NONE ctermfg=black cterm=NONE
    hi DiffAdd ctermbg=black ctermfg=black cterm=NONE
    hi DiffChange ctermbg=black ctermfg=black cterm=NONE
    hi DiffDelete ctermbg=black ctermfg=black cterm=NONE
    hi DiffText ctermbg=black ctermfg=black cterm=NONE
    hi IncSearch ctermbg=black ctermfg=black cterm=reverse
    hi Search ctermbg=black ctermfg=black cterm=NONE
    hi Directory ctermbg=NONE ctermfg=black cterm=NONE
    hi MatchParen ctermbg=black ctermfg=black cterm=NONE
    hi SpellBad ctermbg=NONE ctermfg=black cterm=NONE
    hi SpellCap ctermbg=NONE ctermfg=black cterm=NONE
    hi SpellLocal ctermbg=NONE ctermfg=black cterm=NONE
    hi SpellRare ctermbg=NONE ctermfg=black cterm=NONE
    hi ColorColumn ctermbg=black ctermfg=NONE cterm=NONE
    hi signColumn ctermbg=NONE ctermfg=black cterm=NONE
    hi ErrorMsg ctermbg=black ctermfg=white cterm=NONE
    hi ModeMsg ctermbg=black ctermfg=black cterm=NONE
    hi MoreMsg ctermbg=NONE ctermfg=black cterm=NONE
    hi Question ctermbg=NONE ctermfg=black cterm=NONE
    hi WarningMsg ctermbg=black ctermfg=black cterm=NONE
endif

" Generated with RNB (https://gist.github.com/romainl/5cd2f4ec222805f49eca)
