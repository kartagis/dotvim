

SpecialKey     xxx term=bold ctermfg=1 gui=bold guifg=#839496 guibg=#eee8d5
NonText        xxx term=bold ctermfg=9 gui=bold guifg=#839496
Directory      xxx ctermfg=1 guifg=#268bd2
ErrorMsg       xxx term=reverse ctermfg=15 ctermbg=4 gui=reverse guifg=#dc322f
IncSearch      xxx term=standout cterm=reverse gui=standout guifg=#cb4b16
Search         xxx term=reverse ctermfg=0 ctermbg=14 gui=reverse guifg=#b58900
MoreMsg        xxx ctermfg=2 guifg=#268bd2
ModeMsg        xxx cterm=bold guifg=#268bd2
LineNr         xxx ctermfg=6 guifg=#93a1a1 guibg=#eee8d5
CursorLineNr   xxx term=bold ctermfg=6 gui=bold guifg=Brown
Question       xxx term=bold ctermfg=2 gui=bold guifg=#2aa198
StatusLine     xxx term=reverse cterm=bold,reverse gui=reverse guifg=#586e75 guibg=#eee8d5
StatusLineNC   xxx term=reverse cterm=reverse gui=reverse guifg=#839496 guibg=#eee8d5
VertSplit      xxx cterm=reverse guifg=#839496 guibg=#839496
Title          xxx term=bold ctermfg=5 gui=bold guifg=#cb4b16
Visual         xxx term=reverse cterm=reverse gui=reverse guifg=#93a1a1 guibg=#fdf6e3
VisualNOS      xxx term=reverse cterm=bold,underline gui=reverse guibg=#eee8d5
WarningMsg     xxx term=bold ctermfg=4 gui=bold guifg=#dc322f
WildMenu       xxx term=reverse ctermfg=0 ctermbg=14 gui=reverse guifg=#073642 guibg=#eee8d5
Folded         xxx term=bold,underline ctermfg=1 ctermbg=7 gui=bold,underline guifg=#657b83 guibg=#eee8d5 guisp=#fdf6e3
FoldColumn     xxx ctermfg=1 ctermbg=7 guifg=#657b83 guibg=#eee8d5
DiffAdd        xxx term=bold ctermbg=9 gui=bold guifg=#719e07 guibg=#eee8d5 guisp=#719e07
DiffChange     xxx term=bold ctermbg=13 gui=bold guifg=#b58900 guibg=#eee8d5 guisp=#b58900
DiffDelete     xxx term=bold ctermfg=9 ctermbg=11 gui=bold guifg=#dc322f guibg=#eee8d5
DiffText       xxx term=bold cterm=bold ctermbg=12 gui=bold guifg=#268bd2 guibg=#eee8d5 guisp=#268bd2
SignColumn     xxx ctermfg=1 ctermbg=7 guifg=#657b83 guibg=Grey
Conceal        xxx ctermfg=7 ctermbg=8 guifg=#268bd2
SpellBad       xxx term=undercurl ctermbg=12 gui=undercurl guisp=#dc322f
SpellCap       xxx term=undercurl ctermbg=9 gui=undercurl guisp=#6c71c4
SpellRare      xxx term=undercurl ctermbg=13 gui=undercurl guisp=#2aa198
SpellLocal     xxx term=undercurl ctermbg=11 gui=undercurl guisp=#b58900
Pmenu          xxx term=reverse ctermfg=0 ctermbg=13 gui=reverse guifg=#657b83 guibg=#eee8d5
PmenuSel       xxx term=reverse ctermfg=0 ctermbg=7 gui=reverse guifg=#93a1a1 guibg=#073642
PmenuSbar      xxx term=reverse ctermbg=7 gui=reverse guifg=#073642 guibg=#657b83
PmenuThumb     xxx term=reverse ctermbg=0 gui=reverse guifg=#657b83 guibg=#fdf6e3
TabLine        xxx term=underline cterm=underline ctermfg=0 ctermbg=7 gui=underline guifg=#657b83 guibg=#eee8d5 guisp=#657b83
TabLineSel     xxx term=underline,reverse cterm=bold gui=underline,reverse guifg=#93a1a1 guibg=#073642 guisp=#657b83
TabLineFill    xxx term=underline cterm=reverse gui=underline guifg=#657b83 guibg=#eee8d5 guisp=#657b83
CursorColumn   xxx ctermbg=7 guibg=#eee8d5
CursorLine     xxx cterm=underline guibg=#eee8d5 guisp=#586e75
ColorColumn    xxx ctermbg=12 guibg=#eee8d5
Cursor         xxx guifg=#fdf6e3 guibg=#657b83
lCursor        xxx guifg=bg guibg=fg
                   links to Cursor
MatchParen     xxx term=bold ctermbg=11 gui=bold guifg=#dc322f guibg=#93a1a1
Normal         xxx guifg=#657b83 guibg=#fdf6e3
Comment        xxx term=italic ctermfg=1 gui=italic guifg=#93a1a1
Constant       xxx ctermfg=4 guifg=#2aa198
Special        xxx ctermfg=5 guifg=#dc322f
Identifier     xxx ctermfg=3 guifg=#268bd2
Statement      xxx ctermfg=6 guifg=#719e07
PreProc        xxx ctermfg=5 guifg=#cb4b16
Type           xxx ctermfg=2 guifg=#b58900
Underlined     xxx cterm=underline ctermfg=5 guifg=#6c71c4
Ignore         xxx ctermfg=15
Error          xxx term=bold ctermfg=15 ctermbg=12 gui=bold guifg=#dc322f
Todo           xxx term=bold ctermfg=0 ctermbg=14 gui=bold guifg=#d33682
String         xxx links to Constant
Character      xxx links to Constant
Number         xxx links to Constant
Boolean        xxx links to Constant
Float          xxx links to Number
Function       xxx links to Identifier
Conditional    xxx links to Statement
Repeat         xxx links to Statement
Label          xxx links to Statement
Operator       xxx links to Statement
Keyword        xxx links to Statement
Exception      xxx links to Statement
Include        xxx links to PreProc
Define         xxx links to PreProc
Macro          xxx links to PreProc
PreCondit      xxx links to PreProc
StorageClass   xxx links to Type
Structure      xxx links to Type
Typedef        xxx links to Type
Tag            xxx links to Special
SpecialChar    xxx links to Special
Delimiter      xxx links to Special
SpecialComment xxx links to Special
Debug          xxx links to Special
helpLeadBlank  xxx cleared
helpNormal     xxx cleared
HelpCommand    xxx links to Statement
HelpExample    xxx guifg=#586e75
htmlEndTag     xxx guifg=#93a1a1
htmlTagName    xxx term=bold gui=bold guifg=#268bd2
htmlLink       xxx links to Function
htmlSpecialTagName xxx term=italic gui=italic guifg=#268bd2
htmlTag        xxx guifg=#93a1a1
diffBDiffer    xxx links to WarningMsg
diffCommon     xxx links to WarningMsg
diffDiffer     xxx links to WarningMsg
diffIdentical  xxx links to WarningMsg
diffIsA        xxx links to WarningMsg
diffNoEOL      xxx links to WarningMsg
diffOnly       xxx links to WarningMsg
diffRemoved    xxx links to WarningMsg
diffAdded      xxx links to Statement
SyntasticErrorSign xxx links to Error
SyntasticWarningSign xxx links to Todo
SyntasticStyleErrorSign xxx links to SyntasticErrorSign
SyntasticStyleWarningSign xxx links to SyntasticWarningSign
SyntasticStyleErrorLine xxx links to SyntasticErrorLine
SyntasticErrorLine xxx cleared
SyntasticStyleWarningLine xxx links to SyntasticWarningLine
SyntasticWarningLine xxx cleared
SyntasticError xxx links to SpellBad
SyntasticWarning xxx links to SpellCap
vimVar         xxx links to Identifier
vimFunc        xxx links to Function
vimUserFunc    xxx links to Function
helpSpecial    xxx links to Special
vimSet         xxx links to Normal
vimSetEqual    xxx links to Normal
vimCommentString xxx guifg=#6c71c4
vimCommand     xxx guifg=#b58900
vimCmdSep      xxx term=bold gui=bold guifg=#268bd2
helpOption     xxx guifg=#2aa198
helpNote       xxx guifg=#d33682
helpVim        xxx guifg=#d33682
helpHyperTextJump xxx term=underline gui=underline guifg=#268bd2
helpHyperTextEntry xxx guifg=#719e07
vimIsCommand   xxx guifg=#839496
vimSynMtchOpt  xxx guifg=#b58900
vimSynType     xxx guifg=#2aa198
vimHiLink      xxx guifg=#268bd2
vimHiGroup     xxx guifg=#268bd2
vimGroup       xxx term=bold,underline gui=bold,underline guifg=#268bd2
diffLine       xxx links to Identifier
gitcommitComment xxx term=italic gui=italic guifg=#93a1a1
gitcommitUntracked xxx links to gitcommitComment
gitcommitDiscarded xxx links to gitcommitComment
gitcommitSelected xxx links to gitcommitComment
gitcommitUnmerged xxx term=bold gui=bold guifg=#719e07
gitcommitOnBranch xxx term=bold gui=bold guifg=#93a1a1
gitcommitBranch xxx term=bold gui=bold guifg=#d33682
gitcommitNoBranch xxx links to gitcommitBranch
gitcommitDiscardedType xxx guifg=#dc322f
gitcommitSelectedType xxx guifg=#719e07
gitcommitHeader xxx guifg=#93a1a1
gitcommitUntrackedFile xxx term=bold gui=bold guifg=#2aa198
gitcommitDiscardedFile xxx term=bold gui=bold guifg=#dc322f
gitcommitSelectedFile xxx term=bold gui=bold guifg=#719e07
gitcommitUnmergedFile xxx term=bold gui=bold guifg=#b58900
gitcommitFile  xxx term=bold gui=bold guifg=#657b83
gitcommitDiscardedArrow xxx links to gitcommitDiscardedFile
gitcommitSelectedArrow xxx links to gitcommitSelectedFile
gitcommitUnmergedArrow xxx links to gitcommitUnmergedFile
htmlTagN       xxx term=bold gui=bold guifg=#586e75
htmlArg        xxx guifg=#839496
javaScript     xxx guifg=#b58900
perlHereDoc    xxx guifg=#586e75 guibg=#fdf6e3
perlVarPlain   xxx guifg=#b58900 guibg=#fdf6e3
perlStatementFileDesc xxx guifg=#2aa198 guibg=#fdf6e3
texStatement   xxx guifg=#2aa198 guibg=#fdf6e3
texMathZoneX   xxx guifg=#b58900 guibg=#fdf6e3
texMathMatcher xxx guifg=#b58900 guibg=#fdf6e3
texRefLabel    xxx guifg=#b58900 guibg=#fdf6e3
rubyDefine     xxx term=bold gui=bold guifg=#586e75 guibg=#fdf6e3
cPreCondit     xxx guifg=#cb4b16
VarId          xxx guifg=#268bd2
ConId          xxx guifg=#b58900
hsImport       xxx guifg=#d33682
hsString       xxx guifg=#839496
hsStructure    xxx guifg=#2aa198
hs_hlFunctionName xxx guifg=#268bd2
hsStatement    xxx guifg=#2aa198
hsImportLabel  xxx guifg=#2aa198
hs_OpFunctionName xxx guifg=#b58900
hs_DeclareFunction xxx guifg=#cb4b16
hsVarSym       xxx guifg=#2aa198
hsType         xxx guifg=#b58900
hsTypedef      xxx guifg=#2aa198
hsModuleName   xxx term=underline gui=underline guifg=#719e07
hsModuleStartLabel xxx guifg=#d33682
                   links to hsStructure
hsImportParams xxx links to Delimiter
hsDelimTypeExport xxx links to Delimiter
hsModuleWhereLabel xxx links to hsModuleStartLabel
hsNiceOperator xxx guifg=#2aa198
pandocTitleBlock xxx guifg=#268bd2
pandocTitleBlockTitle xxx term=bold gui=bold guifg=#268bd2
pandocTitleComment xxx term=bold gui=bold guifg=#268bd2
pandocComment  xxx term=italic gui=italic guifg=#93a1a1
pandocVerbatimBlock xxx guifg=#b58900
pandocVerbatimBlockDeep xxx links to pandocVerbatimBlock
pandocCodeBlock xxx links to pandocVerbatimBlock
pandocCodeBlockDelim xxx links to pandocVerbatimBlock
pandocBlockQuote xxx guifg=#268bd2
pandocBlockQuoteLeader1 xxx guifg=#268bd2
pandocBlockQuoteLeader2 xxx guifg=#2aa198
pandocBlockQuoteLeader3 xxx guifg=#b58900
pandocBlockQuoteLeader4 xxx guifg=#dc322f
pandocBlockQuoteLeader5 xxx guifg=#657b83
pandocBlockQuoteLeader6 xxx guifg=#93a1a1
pandocListMarker xxx guifg=#d33682
pandocListReference xxx term=underline gui=underline guifg=#d33682
pandocDefinitionBlock xxx guifg=#6c71c4
pandocDefinitionTerm xxx term=standout gui=standout guifg=#6c71c4
pandocDefinitionIndctr xxx term=bold gui=bold guifg=#6c71c4
pandocEmphasisDefinition xxx term=italic gui=italic guifg=#6c71c4
pandocEmphasisNestedDefinition xxx term=bold gui=bold guifg=#6c71c4
pandocStrongEmphasisDefinition xxx term=bold gui=bold guifg=#6c71c4
pandocStrongEmphasisNestedDefinition xxx term=bold gui=bold guifg=#6c71c4
pandocStrongEmphasisEmphasisDefinition xxx term=bold gui=bold guifg=#6c71c4
pandocStrikeoutDefinition xxx term=reverse gui=reverse guifg=#6c71c4
pandocVerbatimInlineDefinition xxx guifg=#6c71c4
pandocSuperscriptDefinition xxx guifg=#6c71c4
pandocSubscriptDefinition xxx guifg=#6c71c4
pandocTable    xxx guifg=#268bd2
pandocTableStructure xxx guifg=#268bd2
pandocTableStructureTop xxx links to pandocTableStructre
pandocTableStructre xxx cleared
pandocTableStructureEnd xxx links to pandocTableStructre
pandocTableZebraLight xxx guifg=#268bd2 guibg=#fdf6e3
pandocTableZebraDark xxx guifg=#268bd2 guibg=#eee8d5
pandocEmphasisTable xxx term=italic gui=italic guifg=#268bd2
pandocEmphasisNestedTable xxx term=bold gui=bold guifg=#268bd2
pandocStrongEmphasisTable xxx term=bold gui=bold guifg=#268bd2
pandocStrongEmphasisNestedTable xxx term=bold gui=bold guifg=#268bd2
pandocStrongEmphasisEmphasisTable xxx term=bold gui=bold guifg=#268bd2
pandocStrikeoutTable xxx term=reverse gui=reverse guifg=#268bd2
pandocVerbatimInlineTable xxx guifg=#268bd2
pandocSuperscriptTable xxx guifg=#268bd2
pandocSubscriptTable xxx guifg=#268bd2
pandocHeading  xxx term=bold gui=bold guifg=#cb4b16
pandocHeadingMarker xxx term=bold gui=bold guifg=#b58900
pandocEmphasisHeading xxx term=bold gui=bold guifg=#cb4b16
pandocEmphasisNestedHeading xxx term=bold gui=bold guifg=#cb4b16
pandocStrongEmphasisHeading xxx term=bold gui=bold guifg=#cb4b16
pandocStrongEmphasisNestedHeading xxx term=bold gui=bold guifg=#cb4b16
pandocStrongEmphasisEmphasisHeading xxx term=bold gui=bold guifg=#cb4b16
pandocStrikeoutHeading xxx term=reverse gui=reverse guifg=#cb4b16
pandocVerbatimInlineHeading xxx term=bold gui=bold guifg=#cb4b16
pandocSuperscriptHeading xxx term=bold gui=bold guifg=#cb4b16
pandocSubscriptHeading xxx term=bold gui=bold guifg=#cb4b16
pandocLinkDelim xxx guifg=#93a1a1
pandocLinkLabel xxx term=underline gui=underline guifg=#268bd2
pandocLinkText xxx term=bold,underline gui=bold,underline guifg=#268bd2
pandocLinkURL  xxx term=underline gui=underline guifg=#839496
pandocLinkTitle xxx term=underline gui=underline guifg=#839496
pandocLinkTitleDelim xxx term=underline gui=underline guifg=#93a1a1 guisp=#839496
pandocLinkDefinition xxx term=underline gui=underline guifg=#2aa198 guisp=#839496
pandocLinkDefinitionID xxx term=bold gui=bold guifg=#268bd2
pandocImageCaption xxx term=bold,underline gui=bold,underline guifg=#6c71c4
pandocFootnoteLink xxx term=underline gui=underline guifg=#719e07
pandocFootnoteDefLink xxx term=bold gui=bold guifg=#719e07
pandocFootnoteInline xxx term=bold,underline gui=bold,underline guifg=#719e07
pandocFootnote xxx guifg=#719e07
pandocCitationDelim xxx guifg=#d33682
pandocCitation xxx guifg=#d33682
pandocCitationID xxx term=underline gui=underline guifg=#d33682
pandocCitationRef xxx guifg=#d33682
pandocStyleDelim xxx guifg=#93a1a1
pandocEmphasis xxx term=italic gui=italic guifg=#657b83
pandocEmphasisNested xxx term=bold gui=bold guifg=#657b83
pandocStrongEmphasis xxx term=bold gui=bold guifg=#657b83
pandocStrongEmphasisNested xxx term=bold gui=bold guifg=#657b83
pandocStrongEmphasisEmphasis xxx term=bold gui=bold guifg=#657b83
pandocStrikeout xxx term=reverse gui=reverse guifg=#93a1a1
pandocVerbatimInline xxx guifg=#b58900
pandocSuperscript xxx guifg=#6c71c4
pandocSubscript xxx guifg=#6c71c4
pandocRule     xxx term=bold gui=bold guifg=#268bd2
pandocRuleLine xxx term=bold gui=bold guifg=#268bd2
pandocEscapePair xxx term=bold gui=bold guifg=#dc322f
pandocNonBreakingSpace xxx term=reverse gui=reverse guifg=#dc322f
pandocEscapedCharacter xxx links to pandocEscapePair
pandocLineBreak xxx links to pandocEscapePair
pandocMetadataDelim xxx guifg=#93a1a1
pandocMetadata xxx term=bold gui=bold guifg=#268bd2
pandocMetadataKey xxx guifg=#268bd2
pandocMetadataTitle xxx links to pandocMetadata
