" austerity.vim -- Vim color scheme.
" Author:      Romain Lafourcade (romainlafourcade@gmail.com)
" Description: no description yet

hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'austerity'

if &t_Co >= 256 || has('gui_running')
    hi Normal ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi NonText ctermbg=NONE ctermfg=7 cterm=NONE guibg=NONE guifg=#999999 gui=NONE
    hi Comment ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#666666 gui=NONE
    hi Constant ctermbg=NONE ctermfg=NONE cterm=bold guibg=NONE guifg=NONE gui=bold
    hi Error ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse
    hi Identifier ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi PreProc ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#666666 gui=NONE
    hi Special ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi Statement ctermbg=NONE ctermfg=NONE cterm=bold guibg=NONE guifg=NONE gui=bold
    hi String ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse
    hi Type ctermbg=NONE ctermfg=NONE cterm=bold guibg=NONE guifg=NONE gui=bold
    hi Underlined ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
    hi StatusLine ctermbg=7 ctermfg=NONE cterm=NONE guibg=#999999 guifg=NONE gui=NONE
    hi StatusLineNC ctermbg=NONE ctermfg=7 cterm=underline guibg=NONE guifg=#999999 gui=underline
    hi VertSplit ctermbg=NONE ctermfg=NONE cterm=bold guibg=NONE guifg=NONE gui=bold
    hi TabLine ctermbg=NONE ctermfg=7 cterm=underline guibg=NONE guifg=#999999 gui=underline
    hi TabLineFill ctermbg=NONE ctermfg=7 cterm=underline guibg=NONE guifg=#999999 gui=underline
    hi TabLineSel ctermbg=7 ctermfg=NONE cterm=NONE guibg=#999999 guifg=NONE gui=NONE
    hi Title ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi LineNr ctermbg=NONE ctermfg=7 cterm=NONE guibg=NONE guifg=#999999 gui=NONE
    hi Cursor ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi CursorColumn ctermbg=15 ctermfg=NONE cterm=NONE guibg=#ffffff guifg=NONE gui=NONE
    hi CursorLine ctermbg=15 ctermfg=NONE cterm=NONE guibg=#ffffff guifg=NONE gui=NONE
    hi CursorLineNr ctermbg=15 ctermfg=NONE cterm=NONE guibg=#ffffff guifg=NONE gui=NONE
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi Visual ctermbg=15 ctermfg=8 cterm=reverse guibg=#ffffff guifg=#666666 gui=reverse
    hi VisualNOS ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
    hi Pmenu ctermbg=15 ctermfg=NONE cterm=NONE guibg=#ffffff guifg=NONE gui=NONE
    hi PmenuSbar ctermbg=8 ctermfg=NONE cterm=NONE guibg=#666666 guifg=NONE gui=NONE
    hi PmenuSel ctermbg=7 ctermfg=NONE cterm=NONE guibg=#999999 guifg=NONE gui=NONE
    hi PmenuThumb ctermbg=7 ctermfg=NONE cterm=NONE guibg=#999999 guifg=NONE gui=NONE
    hi FoldColumn ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi Folded ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi WildMenu ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse
    hi SpecialKey ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi DiffAdd ctermbg=lightgreen ctermfg=NONE cterm=NONE guibg=lightgreen guifg=NONE gui=NONE
    hi DiffChange ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi DiffDelete ctermbg=lightred ctermfg=NONE cterm=NONE guibg=lightred guifg=NONE gui=NONE
    hi DiffText ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi IncSearch ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse
    hi Search ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse
    hi Directory ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi MatchParen ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse
    hi SpellBad ctermbg=NONE ctermfg=NONE cterm=undercurl guibg=NONE guifg=NONE gui=undercurl guisp=NONE
    hi SpellCap ctermbg=NONE ctermfg=NONE cterm=undercurl guibg=NONE guifg=NONE gui=undercurl guisp=NONE
    hi SpellLocal ctermbg=NONE ctermfg=NONE cterm=undercurl guibg=NONE guifg=NONE gui=undercurl guisp=NONE
    hi SpellRare ctermbg=NONE ctermfg=NONE cterm=undercurl guibg=NONE guifg=NONE gui=undercurl guisp=NONE
    hi ColorColumn ctermbg=7 ctermfg=NONE cterm=NONE guibg=#999999 guifg=NONE gui=NONE
    hi signColumn ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi ErrorMsg ctermbg=NONE ctermfg=NONE cterm=bold guibg=NONE guifg=NONE gui=bold
    hi ModeMsg ctermbg=NONE ctermfg=NONE cterm=bold guibg=NONE guifg=NONE gui=bold
    hi MoreMsg ctermbg=NONE ctermfg=NONE cterm=bold guibg=NONE guifg=NONE gui=bold
    hi Question ctermbg=NONE ctermfg=NONE cterm=bold guibg=NONE guifg=NONE gui=bold
    hi WarningMsg ctermbg=NONE ctermfg=NONE cterm=bold guibg=NONE guifg=NONE gui=bold

    set background=light
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=NONE ctermfg=NONE cterm=NONE
    hi NonText ctermbg=NONE ctermfg=7 cterm=NONE
    hi Comment ctermbg=NONE ctermfg=8 cterm=NONE
    hi Constant ctermbg=NONE ctermfg=NONE cterm=bold
    hi Error ctermbg=NONE ctermfg=NONE cterm=reverse
    hi Identifier ctermbg=NONE ctermfg=NONE cterm=underline
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=8 cterm=NONE
    hi Special ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Statement ctermbg=NONE ctermfg=NONE cterm=bold
    hi String ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse
    hi Type ctermbg=NONE ctermfg=NONE cterm=bold
    hi Underlined ctermbg=NONE ctermfg=NONE cterm=underline
    hi StatusLine ctermbg=7 ctermfg=NONE cterm=NONE
    hi StatusLineNC ctermbg=NONE ctermfg=7 cterm=underline
    hi VertSplit ctermbg=NONE ctermfg=NONE cterm=bold
    hi TabLine ctermbg=NONE ctermfg=7 cterm=underline
    hi TabLineFill ctermbg=NONE ctermfg=7 cterm=underline
    hi TabLineSel ctermbg=7 ctermfg=NONE cterm=NONE
    hi Title ctermbg=NONE ctermfg=NONE cterm=NONE
    hi LineNr ctermbg=NONE ctermfg=7 cterm=NONE
    hi Cursor ctermbg=NONE ctermfg=NONE cterm=NONE
    hi CursorColumn ctermbg=15 ctermfg=NONE cterm=NONE
    hi CursorLine ctermbg=15 ctermfg=NONE cterm=NONE
    hi CursorLineNr ctermbg=15 ctermfg=NONE cterm=NONE
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Visual ctermbg=15 ctermfg=8 cterm=reverse
    hi VisualNOS ctermbg=NONE ctermfg=NONE cterm=underline
    hi Pmenu ctermbg=15 ctermfg=NONE cterm=NONE
    hi PmenuSbar ctermbg=8 ctermfg=NONE cterm=NONE
    hi PmenuSel ctermbg=7 ctermfg=NONE cterm=NONE
    hi PmenuThumb ctermbg=7 ctermfg=NONE cterm=NONE
    hi FoldColumn ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Folded ctermbg=NONE ctermfg=NONE cterm=NONE
    hi WildMenu ctermbg=NONE ctermfg=NONE cterm=reverse
    hi SpecialKey ctermbg=NONE ctermfg=NONE cterm=NONE
    hi DiffAdd ctermbg=lightgreen ctermfg=NONE cterm=NONE
    hi DiffChange ctermbg=NONE ctermfg=NONE cterm=NONE
    hi DiffDelete ctermbg=lightred ctermfg=NONE cterm=NONE
    hi DiffText ctermbg=NONE ctermfg=NONE cterm=NONE
    hi IncSearch ctermbg=NONE ctermfg=NONE cterm=reverse
    hi Search ctermbg=NONE ctermfg=NONE cterm=reverse
    hi Directory ctermbg=NONE ctermfg=NONE cterm=NONE
    hi MatchParen ctermbg=NONE ctermfg=NONE cterm=reverse
    hi SpellBad ctermbg=NONE ctermfg=NONE cterm=undercurl
    hi SpellCap ctermbg=NONE ctermfg=NONE cterm=undercurl
    hi SpellLocal ctermbg=NONE ctermfg=NONE cterm=undercurl
    hi SpellRare ctermbg=NONE ctermfg=NONE cterm=undercurl
    hi ColorColumn ctermbg=7 ctermfg=NONE cterm=NONE
    hi signColumn ctermbg=NONE ctermfg=NONE cterm=NONE
    hi ErrorMsg ctermbg=NONE ctermfg=NONE cterm=bold
    hi ModeMsg ctermbg=NONE ctermfg=NONE cterm=bold
    hi MoreMsg ctermbg=NONE ctermfg=NONE cterm=bold
    hi Question ctermbg=NONE ctermfg=NONE cterm=bold
    hi WarningMsg ctermbg=NONE ctermfg=NONE cterm=bold

    set background=light
endif

" Generated with RNB (https://gist.github.com/romainl/5cd2f4ec222805f49eca)
