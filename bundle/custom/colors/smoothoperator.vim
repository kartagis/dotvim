" smoothoperator.vim -- Vim color scheme.
" Author:      Romain Lafourcade (romainlafourcade@gmail.com)
" Description: foo bar baz

hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'smoothoperator'

if &t_Co >= 256 || has('gui_running')
    hi Normal ctermbg=236 ctermfg=230 cterm=NONE guibg=#303030 guifg=#ffffdf gui=NONE
    hi NonText ctermbg=236 ctermfg=187 cterm=NONE guibg=#303030 guifg=#dfdfaf gui=NONE
    hi Comment ctermbg=NONE ctermfg=101 cterm=NONE guibg=NONE guifg=#87875f gui=NONE
    hi Constant ctermbg=NONE ctermfg=223 cterm=NONE guibg=NONE guifg=#ffdfaf gui=NONE
    hi Error ctermbg=230 ctermfg=152 cterm=reverse guibg=#ffffdf guifg=#afd7d7 gui=reverse
    hi Identifier ctermbg=NONE ctermfg=223 cterm=NONE guibg=NONE guifg=#ffdfaf gui=NONE
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi PreProc ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi Special ctermbg=NONE ctermfg=110 cterm=NONE guibg=NONE guifg=#87afd7 gui=NONE
    hi Statement ctermbg=NONE ctermfg=230 cterm=bold guibg=NONE guifg=#ffffdf gui=bold
    hi String ctermbg=NONE ctermfg=110 cterm=NONE guibg=NONE guifg=#87afd7 gui=NONE
    hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse
    hi Type ctermbg=NONE ctermfg=223 cterm=NONE guibg=NONE guifg=#ffdfaf gui=NONE
    hi Underlined ctermbg=NONE ctermfg=230 cterm=underline guibg=NONE guifg=#ffffdf gui=underline
    hi StatusLine ctermbg=187 ctermfg=58 cterm=NONE guibg=#dfdfaf guifg=#5f5f00 gui=NONE
    hi StatusLineNC ctermbg=101 ctermfg=187 cterm=NONE guibg=#87875f guifg=#dfdfaf gui=NONE
    hi VertSplit ctermbg=101 ctermfg=101 cterm=NONE guibg=#87875f guifg=#87875f gui=NONE
    hi TabLine ctermbg=101 ctermfg=187 cterm=NONE guibg=#87875f guifg=#dfdfaf gui=NONE
    hi TabLineFill ctermbg=101 ctermfg=101 cterm=NONE guibg=#87875f guifg=#87875f gui=NONE
    hi TabLineSel ctermbg=187 ctermfg=58 cterm=NONE guibg=#dfdfaf guifg=#5f5f00 gui=NONE
    hi Title ctermbg=NONE ctermfg=152 cterm=NONE guibg=NONE guifg=#afd7d7 gui=NONE
    hi LineNr ctermbg=NONE ctermfg=144 cterm=NONE guibg=NONE guifg=#afaf87 gui=NONE
    hi Cursor ctermbg=230 ctermfg=236 cterm=NONE guibg=#ffffdf guifg=#303030 gui=NONE
    hi CursorColumn ctermbg=101 ctermfg=NONE cterm=NONE guibg=#87875f guifg=NONE gui=NONE
    hi CursorLine ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
    hi CursorLineNr ctermbg=NONE ctermfg=230 cterm=underline guibg=NONE guifg=#ffffdf gui=underline
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi Visual ctermbg=152 ctermfg=236 cterm=NONE guibg=#afd7d7 guifg=#303030 gui=NONE
    hi VisualNOS ctermbg=110 ctermfg=236 cterm=NONE guibg=#87afd7 guifg=#303030 gui=NONE
    hi Pmenu ctermbg=187 ctermfg=58 cterm=NONE guibg=#dfdfaf guifg=#5f5f00 gui=NONE
    hi PmenuSbar ctermbg=101 ctermfg=58 cterm=NONE guibg=#87875f guifg=#5f5f00 gui=NONE
    hi PmenuSel ctermbg=101 ctermfg=230 cterm=NONE guibg=#87875f guifg=#ffffdf gui=NONE
    hi PmenuThumb ctermbg=58 ctermfg=58 cterm=NONE guibg=#5f5f00 guifg=#5f5f00 gui=NONE
    hi FoldColumn ctermbg=NONE ctermfg=101 cterm=NONE guibg=NONE guifg=#87875f gui=NONE
    hi Folded ctermbg=187 ctermfg=236 cterm=NONE guibg=#dfdfaf guifg=#303030 gui=NONE
    hi WildMenu ctermbg=152 ctermfg=236 cterm=NONE guibg=#afd7d7 guifg=#303030 gui=NONE
    hi SpecialKey ctermbg=NONE ctermfg=187 cterm=NONE guibg=NONE guifg=#dfdfaf gui=NONE
    hi DiffAdd ctermbg=110 ctermfg=236 cterm=NONE guibg=#87afd7 guifg=#303030 gui=NONE
    hi DiffChange ctermbg=110 ctermfg=236 cterm=NONE guibg=#87afd7 guifg=#303030 gui=NONE
    hi DiffDelete ctermbg=110 ctermfg=236 cterm=NONE guibg=#87afd7 guifg=#303030 gui=NONE
    hi DiffText ctermbg=152 ctermfg=236 cterm=NONE guibg=#afd7d7 guifg=#303030 gui=NONE
    hi IncSearch ctermbg=230 ctermfg=152 cterm=reverse guibg=#ffffdf guifg=#afd7d7 gui=reverse
    hi Search ctermbg=152 ctermfg=236 cterm=NONE guibg=#afd7d7 guifg=#303030 gui=NONE
    hi Directory ctermbg=NONE ctermfg=110 cterm=NONE guibg=NONE guifg=#87afd7 gui=NONE
    hi MatchParen ctermbg=152 ctermfg=236 cterm=NONE guibg=#afd7d7 guifg=#303030 gui=NONE
    hi SpellBad ctermbg=NONE ctermfg=160 cterm=NONE guibg=NONE guifg=#d70000 gui=NONE guisp=#d70000
    hi SpellCap ctermbg=NONE ctermfg=103 cterm=NONE guibg=NONE guifg=#8787af gui=NONE guisp=#8787af
    hi SpellLocal ctermbg=NONE ctermfg=37 cterm=NONE guibg=NONE guifg=#00afaf gui=NONE guisp=#00afaf
    hi SpellRare ctermbg=NONE ctermfg=221 cterm=NONE guibg=NONE guifg=#ffdf5f gui=NONE guisp=#ffdf5f
    hi ColorColumn ctermbg=187 ctermfg=NONE cterm=NONE guibg=#dfdfaf guifg=NONE gui=NONE
    hi signColumn ctermbg=NONE ctermfg=101 cterm=NONE guibg=NONE guifg=#87875f gui=NONE
    hi ErrorMsg ctermbg=160 ctermfg=230 cterm=NONE guibg=#d70000 guifg=#ffffdf gui=NONE
    hi ModeMsg ctermbg=35 ctermfg=230 cterm=NONE guibg=#00af5f guifg=#ffffdf gui=NONE
    hi MoreMsg ctermbg=110 ctermfg=230 cterm=NONE guibg=#87afd7 guifg=#ffffdf gui=NONE
    hi Question ctermbg=37 ctermfg=230 cterm=NONE guibg=#00afaf guifg=#ffffdf gui=NONE
    hi WarningMsg ctermbg=103 ctermfg=230 cterm=NONE guibg=#8787af guifg=#ffffdf gui=NONE

    set background=dark
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=0 ctermfg=15 cterm=NONE
    hi NonText ctermbg=0 ctermfg=7 cterm=NONE
    hi Comment ctermbg=NONE ctermfg=8 cterm=NONE
    hi Constant ctermbg=NONE ctermfg=11 cterm=NONE
    hi Error ctermbg=15 ctermfg=12 cterm=reverse
    hi Identifier ctermbg=NONE ctermfg=11 cterm=NONE
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=7 cterm=NONE
    hi Special ctermbg=NONE ctermfg=4 cterm=NONE
    hi Statement ctermbg=NONE ctermfg=15 cterm=bold
    hi String ctermbg=NONE ctermfg=4 cterm=NONE
    hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse
    hi Type ctermbg=NONE ctermfg=11 cterm=NONE
    hi Underlined ctermbg=NONE ctermfg=15 cterm=underline
    hi StatusLine ctermbg=7 ctermfg=0 cterm=NONE
    hi StatusLineNC ctermbg=8 ctermfg=7 cterm=NONE
    hi VertSplit ctermbg=8 ctermfg=8 cterm=NONE
    hi TabLine ctermbg=8 ctermfg=7 cterm=NONE
    hi TabLineFill ctermbg=8 ctermfg=8 cterm=NONE
    hi TabLineSel ctermbg=7 ctermfg=0 cterm=NONE
    hi Title ctermbg=NONE ctermfg=12 cterm=NONE
    hi LineNr ctermbg=NONE ctermfg=7 cterm=NONE
    hi Cursor ctermbg=15 ctermfg=0 cterm=NONE
    hi CursorColumn ctermbg=8 ctermfg=NONE cterm=NONE
    hi CursorLine ctermbg=NONE ctermfg=NONE cterm=underline
    hi CursorLineNr ctermbg=NONE ctermfg=15 cterm=underline
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Visual ctermbg=12 ctermfg=0 cterm=NONE
    hi VisualNOS ctermbg=4 ctermfg=0 cterm=NONE
    hi Pmenu ctermbg=7 ctermfg=0 cterm=NONE
    hi PmenuSbar ctermbg=8 ctermfg=0 cterm=NONE
    hi PmenuSel ctermbg=8 ctermfg=15 cterm=NONE
    hi PmenuThumb ctermbg=0 ctermfg=0 cterm=NONE
    hi FoldColumn ctermbg=NONE ctermfg=8 cterm=NONE
    hi Folded ctermbg=7 ctermfg=0 cterm=NONE
    hi WildMenu ctermbg=12 ctermfg=0 cterm=NONE
    hi SpecialKey ctermbg=NONE ctermfg=7 cterm=NONE
    hi DiffAdd ctermbg=4 ctermfg=0 cterm=NONE
    hi DiffChange ctermbg=4 ctermfg=0 cterm=NONE
    hi DiffDelete ctermbg=4 ctermfg=0 cterm=NONE
    hi DiffText ctermbg=12 ctermfg=0 cterm=NONE
    hi IncSearch ctermbg=15 ctermfg=12 cterm=reverse
    hi Search ctermbg=12 ctermfg=0 cterm=NONE
    hi Directory ctermbg=NONE ctermfg=4 cterm=NONE
    hi MatchParen ctermbg=12 ctermfg=0 cterm=NONE
    hi SpellBad ctermbg=NONE ctermfg=9 cterm=NONE
    hi SpellCap ctermbg=NONE ctermfg=13 cterm=NONE
    hi SpellLocal ctermbg=NONE ctermfg=14 cterm=NONE
    hi SpellRare ctermbg=NONE ctermfg=11 cterm=NONE
    hi ColorColumn ctermbg=7 ctermfg=NONE cterm=NONE
    hi signColumn ctermbg=NONE ctermfg=8 cterm=NONE
    hi ErrorMsg ctermbg=9 ctermfg=15 cterm=NONE
    hi ModeMsg ctermbg=10 ctermfg=15 cterm=NONE
    hi MoreMsg ctermbg=4 ctermfg=15 cterm=NONE
    hi Question ctermbg=14 ctermfg=15 cterm=NONE
    hi WarningMsg ctermbg=13 ctermfg=15 cterm=NONE

    set background=dark
endif

" Generated with RNB (https://gist.github.com/romainl/5cd2f4ec222805f49eca)
