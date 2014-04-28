" 'flatened_dark_lo.vim' -- Vim color scheme.
" Maintainer:   Romain Lafourcade (romainlafourcade@gmail.com)
" A flatened solarized. Dark. For 16-colors terminal emulators.

set background=dark

hi clear

if exists('syntax_on')
  syntax reset

endif

let colors_name = 'flatened_dark_lo'

hi Normal  ctermfg=12  ctermbg=8

hi ColorColumn  ctermbg=0
hi Comment  ctermfg=10
hi ConId  ctermfg=3
hi Conceal  ctermfg=4
hi Constant  ctermfg=6
hi Cursor  ctermfg=8  ctermbg=12
hi CursorColumn  ctermbg=0
hi CursorLine  ctermbg=0
hi CursorLineNr  term=bold  ctermfg=11
hi DiffAdd  ctermfg=2  ctermbg=0
hi DiffChange  ctermfg=3  ctermbg=0
hi DiffDelete  ctermfg=1  ctermbg=0
hi DiffText  ctermfg=4  ctermbg=0
hi Directory  ctermfg=4
hi Error  term=bold  cterm=bold  ctermfg=1
hi ErrorMsg  term=reverse  cterm=reverse  ctermfg=1
hi FoldColumn  ctermfg=12  ctermbg=0
hi Folded  term=bold,underline  cterm=bold,underline  ctermfg=12  ctermbg=0
hi HelpExample  ctermfg=14
hi Identifier  ctermfg=4
hi IncSearch  term=standout  cterm=standout  ctermfg=9
hi LineNr  ctermfg=10  ctermbg=0
hi MatchParen  term=bold  cterm=bold  ctermfg=1  ctermbg=10
hi ModeMsg  ctermfg=4
hi MoreMsg  ctermfg=4
hi NonText  term=bold  cterm=bold  ctermfg=11
hi Pmenu  term=reverse  cterm=reverse  ctermfg=12  ctermbg=0
hi PmenuSbar  term=reverse  cterm=reverse  ctermfg=7  ctermbg=12
hi PmenuSel  term=reverse  cterm=reverse  ctermfg=10  ctermbg=7
hi PmenuThumb  term=reverse  cterm=reverse  ctermfg=12  ctermbg=8
hi PreProc  ctermfg=9
hi Question  term=bold  cterm=bold  ctermfg=6
hi Search  term=reverse  cterm=reverse  ctermfg=3
hi SignColumn  ctermfg=12  ctermbg=242
hi Special  ctermfg=1
hi SpecialKey  term=bold  cterm=bold  ctermfg=11  ctermbg=0
hi SpellBad  term=undercurl  cterm=undercurl
hi SpellCap  term=undercurl  cterm=undercurl
hi SpellLocal  term=undercurl  cterm=undercurl
hi SpellRare  term=undercurl  cterm=undercurl
hi Statement  ctermfg=2
hi StatusLine  term=reverse  cterm=reverse  ctermfg=14  ctermbg=0
hi StatusLineNC  term=reverse  cterm=reverse  ctermfg=11  ctermbg=0
hi TabLine  term=underline  cterm=underline  ctermfg=12  ctermbg=0
hi TabLineFill  term=underline  cterm=underline  ctermfg=12  ctermbg=0
hi TabLineSel  term=underline,reverse  cterm=underline,reverse  ctermfg=10  ctermbg=7
hi Title  term=bold  cterm=bold  ctermfg=9
hi Todo  term=bold  cterm=bold  ctermfg=5
hi Type  ctermfg=3
hi Underlined  ctermfg=13
hi VarId  ctermfg=4
hi VertSplit  ctermfg=11  ctermbg=11
hi Visual  term=reverse  cterm=reverse  ctermfg=10  ctermbg=8
hi VisualNOS  term=reverse  cterm=reverse  ctermbg=0
hi WarningMsg  term=bold  cterm=bold  ctermfg=1
hi WildMenu  term=reverse  cterm=reverse  ctermfg=7  ctermbg=0

hi cPreCondit  ctermfg=9

hi gitcommitBranch  term=bold  cterm=bold  ctermfg=5
hi gitcommitComment  ctermfg=10
hi gitcommitDiscardedFile  term=bold  cterm=bold  ctermfg=1
hi gitcommitDiscardedType  ctermfg=1
hi gitcommitFile  term=bold  cterm=bold  ctermfg=12
hi gitcommitHeader  ctermfg=10
hi gitcommitOnBranch  term=bold  cterm=bold  ctermfg=10
hi gitcommitSelectedFile  term=bold  cterm=bold  ctermfg=2
hi gitcommitSelectedType  ctermfg=2
hi gitcommitUnmerged  term=bold  cterm=bold  ctermfg=2
hi gitcommitUnmergedFile  term=bold  cterm=bold  ctermfg=3
hi gitcommitUntrackedFile  term=bold  cterm=bold  ctermfg=6

hi helpHyperTextEntry  ctermfg=2
hi helpHyperTextJump  term=underline  cterm=underline  ctermfg=4
hi helpNote  ctermfg=5
hi helpOption  ctermfg=6
hi helpVim  ctermfg=5

hi hsImport  ctermfg=5
hi hsImportLabel  ctermfg=6
hi hsModuleName  term=underline  cterm=underline  ctermfg=2
hi hsModuleStartLabel  ctermfg=5
hi hsNiceOperator  ctermfg=6
hi hsStatement  ctermfg=6
hi hsString  ctermfg=11
hi hsStructure  ctermfg=6
hi hsType  ctermfg=3
hi hsTypedef  ctermfg=6
hi hsVarSym  ctermfg=6
hi hs_DeclareFunction  ctermfg=9
hi hs_OpFunctionName  ctermfg=3
hi hs_hlFunctionName  ctermfg=4

hi htmlArg  ctermfg=11
hi htmlEndTag  ctermfg=10
hi htmlSpecialTagName  ctermfg=4
hi htmlTag  ctermfg=10
hi htmlTagN  term=bold  cterm=bold  ctermfg=14
hi htmlTagName  term=bold  cterm=bold  ctermfg=4

hi javaScript  ctermfg=3

hi pandocBlockQuote  ctermfg=4
hi pandocBlockQuoteLeader1  ctermfg=4
hi pandocBlockQuoteLeader2  ctermfg=6
hi pandocBlockQuoteLeader3  ctermfg=3
hi pandocBlockQuoteLeader4  ctermfg=1
hi pandocBlockQuoteLeader5  ctermfg=12
hi pandocBlockQuoteLeader6  ctermfg=10
hi pandocCitation  ctermfg=5
hi pandocCitationDelim  ctermfg=5
hi pandocCitationID  term=underline  cterm=underline  ctermfg=5
hi pandocCitationRef  ctermfg=5
hi pandocComment  ctermfg=10
hi pandocDefinitionBlock  ctermfg=13
hi pandocDefinitionIndctr  term=bold  cterm=bold  ctermfg=13
hi pandocDefinitionTerm  term=standout  cterm=standout  ctermfg=13
hi pandocEmphasis  ctermfg=12
hi pandocEmphasisDefinition  ctermfg=13
hi pandocEmphasisHeading  term=bold  cterm=bold  ctermfg=9
hi pandocEmphasisNested  term=bold  cterm=bold  ctermfg=12
hi pandocEmphasisNestedDefinition  term=bold  cterm=bold  ctermfg=13
hi pandocEmphasisNestedHeading  term=bold  cterm=bold  ctermfg=9
hi pandocEmphasisNestedTable  term=bold  cterm=bold  ctermfg=4
hi pandocEmphasisTable  ctermfg=4
hi pandocEscapePair  term=bold  cterm=bold  ctermfg=1
hi pandocFootnote  ctermfg=2
hi pandocFootnoteDefLink  term=bold  cterm=bold  ctermfg=2
hi pandocFootnoteInline  term=bold,underline  cterm=bold,underline  ctermfg=2
hi pandocFootnoteLink  term=underline  cterm=underline  ctermfg=2
hi pandocHeading  term=bold  cterm=bold  ctermfg=9
hi pandocHeadingMarker  term=bold  cterm=bold  ctermfg=3
hi pandocImageCaption  term=bold,underline  cterm=bold,underline  ctermfg=13
hi pandocLinkDefinition  term=underline  cterm=underline  ctermfg=6
hi pandocLinkDefinitionID  term=bold  cterm=bold  ctermfg=4
hi pandocLinkDelim  ctermfg=10
hi pandocLinkLabel  term=underline  cterm=underline  ctermfg=4
hi pandocLinkText  term=bold,underline  cterm=bold,underline  ctermfg=4
hi pandocLinkTitle  term=underline  cterm=underline  ctermfg=11
hi pandocLinkTitleDelim  term=underline  cterm=underline  ctermfg=10
hi pandocLinkURL  term=underline  cterm=underline  ctermfg=11
hi pandocListMarker  ctermfg=5
hi pandocListReference  term=underline  cterm=underline  ctermfg=5
hi pandocMetadata  term=bold  cterm=bold  ctermfg=4
hi pandocMetadataDelim  ctermfg=10
hi pandocMetadataKey  ctermfg=4
hi pandocNonBreakingSpace  term=reverse  cterm=reverse  ctermfg=1
hi pandocRule  term=bold  cterm=bold  ctermfg=4
hi pandocRuleLine  term=bold  cterm=bold  ctermfg=4
hi pandocStrikeout  term=reverse  cterm=reverse  ctermfg=10
hi pandocStrikeoutDefinition  term=reverse  cterm=reverse  ctermfg=13
hi pandocStrikeoutHeading  term=reverse  cterm=reverse  ctermfg=9
hi pandocStrikeoutTable  term=reverse  cterm=reverse  ctermfg=4
hi pandocStrongEmphasis  term=bold  cterm=bold  ctermfg=12
hi pandocStrongEmphasisDefinition  term=bold  cterm=bold  ctermfg=13
hi pandocStrongEmphasisEmphasis  term=bold  cterm=bold  ctermfg=12
hi pandocStrongEmphasisEmphasisDefinition  term=bold  cterm=bold  ctermfg=13
hi pandocStrongEmphasisEmphasisHeading  term=bold  cterm=bold  ctermfg=9
hi pandocStrongEmphasisEmphasisTable  term=bold  cterm=bold  ctermfg=4
hi pandocStrongEmphasisHeading  term=bold  cterm=bold  ctermfg=9
hi pandocStrongEmphasisNested  term=bold  cterm=bold  ctermfg=12
hi pandocStrongEmphasisNestedDefinition  term=bold  cterm=bold  ctermfg=13
hi pandocStrongEmphasisNestedHeading  term=bold  cterm=bold  ctermfg=9
hi pandocStrongEmphasisNestedTable  term=bold  cterm=bold  ctermfg=4
hi pandocStrongEmphasisTable  term=bold  cterm=bold  ctermfg=4
hi pandocStyleDelim  ctermfg=10
hi pandocSubscript  ctermfg=13
hi pandocSubscriptDefinition  ctermfg=13
hi pandocSubscriptHeading  term=bold  cterm=bold  ctermfg=9
hi pandocSubscriptTable  ctermfg=4
hi pandocSuperscript  ctermfg=13
hi pandocSuperscriptDefinition  ctermfg=13
hi pandocSuperscriptHeading  term=bold  cterm=bold  ctermfg=9
hi pandocSuperscriptTable  ctermfg=4
hi pandocTable  ctermfg=4
hi pandocTableStructure  ctermfg=4
hi pandocTableZebraDark  ctermfg=4  ctermbg=0
hi pandocTableZebraLight  ctermfg=4  ctermbg=8
hi pandocTitleBlock  ctermfg=4
hi pandocTitleBlockTitle  term=bold  cterm=bold  ctermfg=4
hi pandocTitleComment  term=bold  cterm=bold  ctermfg=4
hi pandocVerbatimBlock  ctermfg=3
hi pandocVerbatimInline  ctermfg=3
hi pandocVerbatimInlineDefinition  ctermfg=13
hi pandocVerbatimInlineHeading  term=bold  cterm=bold  ctermfg=9
hi pandocVerbatimInlineTable  ctermfg=4

hi perlHereDoc  ctermfg=14  ctermbg=8
hi perlStatementFileDesc  ctermfg=6  ctermbg=8
hi perlVarPlain  ctermfg=3  ctermbg=8

hi rubyDefine  term=bold  cterm=bold  ctermfg=14  ctermbg=8

hi texMathMatcher  ctermfg=3  ctermbg=8
hi texMathZoneX  ctermfg=3  ctermbg=8
hi texRefLabel  ctermfg=3  ctermbg=8
hi texStatement  ctermfg=6  ctermbg=8

hi vimCmdSep  term=bold  cterm=bold  ctermfg=4
hi vimCommand  ctermfg=3
hi vimCommentString  ctermfg=13
hi vimGroup  term=bold,underline  cterm=bold,underline  ctermfg=4
hi vimHiGroup  ctermfg=4
hi vimHiLink  ctermfg=4
hi vimIsCommand  ctermfg=11
hi vimSynMtchOpt  ctermfg=3
hi vimSynType  ctermfg=6

hi link Boolean                    Constant
hi link Character                  Constant
hi link Conditional                Statement
hi link Debug                      Special
hi link Define                     PreProc
hi link Delimiter                  Special
hi link Exception                  Statement
hi link Float                      Number
hi link Function                   Identifier
hi link HelpCommand                Statement
hi link Include                    PreProc
hi link Keyword                    Statement
hi link Label                      Statement
hi link Macro                      PreProc
hi link Number                     Constant
hi link Operator                   Statement
hi link PreCondit                  PreProc
hi link Repeat                     Statement
hi link SpecialChar                Special
hi link SpecialComment             Special
hi link StorageClass               Type
hi link String                     Constant
hi link Structure                  Type
hi link SyntasticError             SpellBad
hi link SyntasticErrorSign         Error
hi link SyntasticStyleErrorLine    SyntasticErrorLine
hi link SyntasticStyleErrorSign    SyntasticErrorSign
hi link SyntasticStyleWarningLine  SyntasticWarningLine
hi link SyntasticStyleWarningSign  SyntasticWarningSign
hi link SyntasticWarning           SpellCap
hi link SyntasticWarningSign       Todo
hi link Tag                        Special
hi link Typedef                    Type

hi link diffAdded                  Statement
hi link diffBDiffer                WarningMsg
hi link diffCommon                 WarningMsg
hi link diffDiffer                 WarningMsg
hi link diffIdentical              WarningMsg
hi link diffIsA                    WarningMsg
hi link diffLine                   Identifier
hi link diffNoEOL                  WarningMsg
hi link diffOnly                   WarningMsg
hi link diffRemoved                WarningMsg

hi link gitcommitDiscarded         gitcommitComment
hi link gitcommitDiscardedArrow    gitcommitDiscardedFile
hi link gitcommitNoBranch          gitcommitBranch
hi link gitcommitSelected          gitcommitComment
hi link gitcommitSelectedArrow     gitcommitSelectedFile
hi link gitcommitUnmergedArrow     gitcommitUnmergedFile
hi link gitcommitUntracked         gitcommitComment

hi link helpSpecial                Special

hi link hsDelimTypeExport          Delimiter
hi link hsImportParams             Delimiter
hi link hsModuleWhereLabel         hsModuleStartLabel

hi link htmlLink                   Function

hi link pandocCodeBlock            pandocVerbatimBlock
hi link pandocCodeBlockDelim       pandocVerbatimBlock
hi link pandocEscapedCharacter     pandocEscapePair
hi link pandocLineBreak            pandocEscapePair
hi link pandocMetadataTitle        pandocMetadata
hi link pandocTableStructureEnd    pandocTableStructre
hi link pandocTableStructureTop    pandocTableStructre
hi link pandocVerbatimBlockDeep    pandocVerbatimBlock

hi link vimFunc                    Function
hi link vimSet                     Normal
hi link vimSetEqual                Normal
hi link vimUserFunc                Function
hi link vimVar                     Identifier

hi clear SyntasticErrorLine
hi clear SyntasticWarningLine
hi clear helpLeadBlank
hi clear helpNormal
hi clear pandocTableStructre
