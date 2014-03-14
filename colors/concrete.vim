" Vim color file
" Maintainer:	**
" Last Change:	**
" Last Change:	**
" URL:		**
" Version:	**

set background=dark

if version > 570
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif

let g:colors_name="concrete"

hi Normal       guibg=#202020 guifg=#e0e0e0

hi Comment	guifg=#606060
hi Constant	guifg=#b090b0
hi Special	guifg=#b09090
hi Identifier	guifg=#9090b0
hi Statement	guifg=#9090b0
hi PreProc	guifg=#90b090
hi Type		guifg=#608080
hi Underlined	guifg=#90b0b0
hi Ignore	guifg=#000000
hi Error	guibg=#907070 guifg=#d0d0d0
hi Todo		guibg=#d0d0c0 guifg=#505030

" TODO: skldsgdksdgskd

" hi ColorColumn
" Conceal
" Cursor
" CursorIM
" CursorColumn
hi CursorLine   guibg=#303010
" Directory
" DiffAdd
" DiffChange
" DiffDelete
" DiffText
" ErrorMsg
" VertSplit
" Folded
" FoldColumn
" SignColumn
" IncSearch
hi LineNr      guibg=#404040 guifg=#909070
hi CursorLineNr guibg=#909070 guifg=#404040
" MatchParen

hi ModeMsg  guibg=#c0d0c0 guifg=bg
" MoreMsg
hi NonText guifg=#404040
" Pmenu
" PmenuSel
" PmenuSbar
" PmenuThumb
" Question
" Search
" SpecialKey
" SpellBad
" SpellCap
" SpellLocal
" SpellRare
hi StatusLine guibg=#909070 guifg=bg gui=NONE
hi StatusLineNC guibg=#404040 guifg=bg gui=NONE
" TabLine
" TabLineFill
" TabLineSel
" Title
" Visual
" VisualNOS
" WarningMsg
" WildMenu

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
" SynLink String		Constant
" SynLink Character	Constant
" SynLink Number		Constant
" SynLink Boolean		Constant
" SynLink Float		Number
" SynLink Function	Identifier
" SynLink Conditional	Statement
" SynLink Repeat		Statement
" SynLink Label		Statement
" SynLink Operator	Statement
" SynLink Keyword		Statement
" SynLink Exception	Statement
" SynLink Include		PreProc
" SynLink Define		PreProc
" SynLink Macro		PreProc
" SynLink PreCondit	PreProc
" SynLink StorageClass	Type
" SynLink Structure	Type
" SynLink Typedef		Type
" SynLink Tag		Special
" SynLink SpecialChar	Special
" SynLink Delimiter	Special
" SynLink SpecialComment	Special
" SynLink Debug		Special

"vim: sw=4
