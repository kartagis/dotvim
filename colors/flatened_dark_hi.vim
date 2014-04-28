" 'flatened_dark_high.vim' -- Vim color scheme.
" Maintainer:   Romain Lafourcade (romainlafourcade@gmail.com)
" A flatened solarized. Dark. For GUI Vim.

set background=dark

hi clear

if exists('syntax_on')
  syntax reset

endif

let colors_name = 'flatened_dark_high'

hi  Normal                                  guifg=#839496  guibg=#002b36
hi  ColorColumn                             guibg=#073642
hi  Comment                                 guifg=#586e75  gui=italic
hi  ConId                                   guifg=#b58900
hi  Conceal                                 guifg=#268bd2
hi  Constant                                guifg=#2aa198
hi  Cursor                                  guifg=#002b36  guibg=#839496
hi  CursorColumn                            guibg=#073642
hi  CursorLine                              guibg=#073642  guisp=#93a1a1
hi  CursorLineNr                            guifg=Yellow   gui=bold
hi  DiffAdd                                 guifg=#719e07  guibg=#073642  guisp=#719e07  gui=bold
hi  DiffChange                              guifg=#b58900  guibg=#073642  guisp=#b58900  gui=bold
hi  DiffDelete                              guifg=#dc322f  guibg=#073642  gui=bold
hi  DiffText                                guifg=#268bd2  guibg=#073642  guisp=#268bd2  gui=bold
hi  Directory                               guifg=#268bd2
hi  Error                                   guifg=#dc322f  gui=bold
hi  ErrorMsg                                guifg=#dc322f  gui=reverse
hi  FoldColumn                              guifg=#839496  guibg=#073642
hi  Folded                                  guifg=#839496  guibg=#073642  guisp=#002b36  gui=bold,underline
hi  HelpExample                             guifg=#93a1a1
hi  Identifier                              guifg=#268bd2
hi  IncSearch                               guifg=#cb4b16  gui=standout
hi  LineNr                                  guifg=#586e75  guibg=#073642
hi  MatchParen                              guifg=#dc322f  guibg=#586e75  gui=bold
hi  ModeMsg                                 guifg=#268bd2
hi  MoreMsg                                 guifg=#268bd2
hi  NonText                                 guifg=#657b83  gui=bold
hi  Pmenu                                   guifg=#839496  guibg=#073642  gui=reverse
hi  PmenuSbar                               guifg=#eee8d5  guibg=#839496  gui=reverse
hi  PmenuSel                                guifg=#586e75  guibg=#eee8d5  gui=reverse
hi  PmenuThumb                              guifg=#839496  guibg=#002b36  gui=reverse
hi  PreProc                                 guifg=#cb4b16
hi  Question                                guifg=#2aa198  gui=bold
hi  Search                                  guifg=#b58900  gui=reverse
hi  SignColumn                              guifg=#839496  guibg=Grey
hi  Special                                 guifg=#dc322f
hi  SpecialKey                              guifg=#657b83  guibg=#073642  gui=bold
hi  SpellBad                                guisp=#dc322f  gui=undercurl
hi  SpellCap                                guisp=#6c71c4  gui=undercurl
hi  SpellLocal                              guisp=#b58900  gui=undercurl
hi  SpellRare                               guisp=#2aa198  gui=undercurl
hi  Statement                               guifg=#719e07
hi  StatusLine                              guifg=#93a1a1  guibg=#073642  gui=reverse
hi  StatusLineNC                            guifg=#657b83  guibg=#073642  gui=reverse
hi  TabLine                                 guifg=#839496  guibg=#073642  guisp=#839496  gui=underline
hi  TabLineFill                             guifg=#839496  guibg=#073642  guisp=#839496  gui=underline
hi  TabLineSel                              guifg=#586e75  guibg=#eee8d5  guisp=#839496  gui=underline,reverse
hi  Title                                   guifg=#cb4b16  gui=bold
hi  Todo                                    guifg=#d33682  gui=bold
hi  Type                                    guifg=#b58900
hi  Underlined                              guifg=#6c71c4
hi  VarId                                   guifg=#268bd2
hi  VertSplit                               guifg=#657b83  guibg=#657b83
hi  Visual                                  guifg=#586e75  guibg=#002b36  gui=reverse
hi  VisualNOS                               guibg=#073642  gui=reverse
hi  WarningMsg                              guifg=#dc322f  gui=bold
hi  WildMenu                                guifg=#eee8d5  guibg=#073642 gui=reverse

hi  cPreCondit                              guifg=#cb4b16

hi  gitcommitBranch                         guifg=#d33682  gui=bold
hi  gitcommitComment                        guifg=#586e75  gui=italic
hi  gitcommitDiscardedFile                  guifg=#dc322f  gui=bold
hi  gitcommitDiscardedType                  guifg=#dc322f
hi  gitcommitFile                           guifg=#839496  gui=bold
hi  gitcommitHeader                         guifg=#586e75
hi  gitcommitOnBranch                       guifg=#586e75  gui=bold
hi  gitcommitSelectedFile                   guifg=#719e07  gui=bold
hi  gitcommitSelectedType                   guifg=#719e07
hi  gitcommitUnmerged                       guifg=#719e07  gui=bold
hi  gitcommitUnmergedFile                   guifg=#b58900  gui=bold
hi  gitcommitUntrackedFile                  guifg=#2aa198  gui=bold

hi  helpHyperTextEntry                      guifg=#719e07
hi  helpHyperTextJump                       guifg=#268bd2  gui=underline
hi  helpNote                                guifg=#d33682
hi  helpOption                              guifg=#2aa198
hi  helpVim                                 guifg=#d33682

hi  hsImport                                guifg=#d33682
hi  hsImportLabel                           guifg=#2aa198
hi  hsModuleName                            guifg=#719e07  gui=underline
hi  hsNiceOperator                          guifg=#2aa198
hi  hsStatement                             guifg=#2aa198
hi  hsString                                guifg=#657b83
hi  hsStructure                             guifg=#2aa198
hi  hsType                                  guifg=#b58900
hi  hsTypedef                               guifg=#2aa198
hi  hsVarSym                                guifg=#2aa198
hi  hs_DeclareFunction                      guifg=#cb4b16
hi  hs_OpFunctionName                       guifg=#b58900
hi  hs_hlFunctionName                       guifg=#268bd2

hi  htmlArg                                 guifg=#657b83
hi  htmlEndTag                              guifg=#586e75
hi  htmlSpecialTagName                      guifg=#268bd2  gui=italic
hi  htmlTag                                 guifg=#586e75
hi  htmlTagN                                guifg=#93a1a1  gui=bold
hi  htmlTagName                             guifg=#268bd2  gui=bold

hi  javaScript                              guifg=#b58900

hi  pandocBlockQuote                        guifg=#268bd2
hi  pandocBlockQuoteLeader1                 guifg=#268bd2
hi  pandocBlockQuoteLeader2                 guifg=#2aa198
hi  pandocBlockQuoteLeader3                 guifg=#b58900
hi  pandocBlockQuoteLeader4                 guifg=#dc322f
hi  pandocBlockQuoteLeader5                 guifg=#839496
hi  pandocBlockQuoteLeader6                 guifg=#586e75
hi  pandocCitation                          guifg=#d33682
hi  pandocCitationDelim                     guifg=#d33682
hi  pandocCitationID                        guifg=#d33682  gui=underline
hi  pandocCitationRef                       guifg=#d33682
hi  pandocComment                           guifg=#586e75  gui=italic
hi  pandocDefinitionBlock                   guifg=#6c71c4
hi  pandocDefinitionIndctr                  guifg=#6c71c4  gui=bold
hi  pandocDefinitionTerm                    guifg=#6c71c4  gui=standout
hi  pandocEmphasis                          guifg=#839496  gui=italic
hi  pandocEmphasisDefinition                guifg=#6c71c4  gui=italic
hi  pandocEmphasisHeading                   guifg=#cb4b16  gui=bold
hi  pandocEmphasisNested                    guifg=#839496  gui=bold
hi  pandocEmphasisNestedDefinition          guifg=#6c71c4  gui=bold
hi  pandocEmphasisNestedHeading             guifg=#cb4b16  gui=bold
hi  pandocEmphasisNestedTable               guifg=#268bd2  gui=bold
hi  pandocEmphasisTable                     guifg=#268bd2  gui=italic
hi  pandocEscapePair                        guifg=#dc322f  gui=bold
hi  pandocFootnote                          guifg=#719e07
hi  pandocFootnoteDefLink                   guifg=#719e07  gui=bold
hi  pandocFootnoteInline                    guifg=#719e07  gui=bold,underline
hi  pandocFootnoteLink                      guifg=#719e07  gui=underline
hi  pandocHeading                           guifg=#cb4b16  gui=bold
hi  pandocHeadingMarker                     guifg=#b58900  gui=bold
hi  pandocImageCaption                      guifg=#6c71c4  gui=bold,underline
hi  pandocLinkDefinition                    guifg=#2aa198  guisp=#657b83  gui=underline
hi  pandocLinkDefinitionID                  guifg=#268bd2  gui=bold
hi  pandocLinkDelim                         guifg=#586e75
hi  pandocLinkLabel                         guifg=#268bd2  gui=underline
hi  pandocLinkText                          guifg=#268bd2  gui=bold,underline
hi  pandocLinkTitle                         guifg=#657b83  gui=underline
hi  pandocLinkTitleDelim                    guifg=#586e75  guisp=#657b83  gui=underline
hi  pandocLinkURL                           guifg=#657b83  gui=underline
hi  pandocListMarker                        guifg=#d33682
hi  pandocListReference                     guifg=#d33682  gui=underline
hi  pandocMetadata                          guifg=#268bd2  gui=bold
hi  pandocMetadataDelim                     guifg=#586e75
hi  pandocMetadataKey                       guifg=#268bd2
hi  pandocNonBreakingSpace                  guifg=#dc322f  gui=reverse
hi  pandocRule                              guifg=#268bd2  gui=bold
hi  pandocRuleLine                          guifg=#268bd2  gui=bold
hi  pandocStrikeout                         guifg=#586e75  gui=reverse
hi  pandocStrikeoutDefinition               guifg=#6c71c4  gui=reverse
hi  pandocStrikeoutHeading                  guifg=#cb4b16  gui=reverse
hi  pandocStrikeoutTable                    guifg=#268bd2  gui=reverse
hi  pandocStrongEmphasis                    guifg=#839496  gui=bold
hi  pandocStrongEmphasisDefinition          guifg=#6c71c4  gui=bold
hi  pandocStrongEmphasisEmphasis            guifg=#839496  gui=bold
hi  pandocStrongEmphasisEmphasisDefinition  guifg=#6c71c4  gui=bold
hi  pandocStrongEmphasisEmphasisHeading     guifg=#cb4b16  gui=bold
hi  pandocStrongEmphasisEmphasisTable       guifg=#268bd2  gui=bold
hi  pandocStrongEmphasisHeading             guifg=#cb4b16  gui=bold
hi  pandocStrongEmphasisNested              guifg=#839496  gui=bold
hi  pandocStrongEmphasisNestedDefinition    guifg=#6c71c4  gui=bold
hi  pandocStrongEmphasisNestedHeading       guifg=#cb4b16  gui=bold
hi  pandocStrongEmphasisNestedTable         guifg=#268bd2  gui=bold
hi  pandocStrongEmphasisTable               guifg=#268bd2  gui=bold
hi  pandocStyleDelim                        guifg=#586e75
hi  pandocSubscript                         guifg=#6c71c4
hi  pandocSubscriptDefinition               guifg=#6c71c4
hi  pandocSubscriptHeading                  guifg=#cb4b16  gui=bold
hi  pandocSubscriptTable                    guifg=#268bd2
hi  pandocSuperscript                       guifg=#6c71c4
hi  pandocSuperscriptDefinition             guifg=#6c71c4
hi  pandocSuperscriptHeading                guifg=#cb4b16  gui=bold
hi  pandocSuperscriptTable                  guifg=#268bd2
hi  pandocTable                             guifg=#268bd2
hi  pandocTableStructure                    guifg=#268bd2
hi  pandocTableZebraDark                    guifg=#268bd2  guibg=#073642
hi  pandocTableZebraLight                   guifg=#268bd2  guibg=#002b36
hi  pandocTitleBlock                        guifg=#268bd2
hi  pandocTitleBlockTitle                   guifg=#268bd2  gui=bold
hi  pandocTitleComment                      guifg=#268bd2  gui=bold
hi  pandocVerbatimBlock                     guifg=#b58900
hi  pandocVerbatimInline                    guifg=#b58900
hi  pandocVerbatimInlineDefinition          guifg=#6c71c4
hi  pandocVerbatimInlineHeading             guifg=#cb4b16  gui=bold
hi  pandocVerbatimInlineTable               guifg=#268bd2

hi  perlHereDoc                             guifg=#93a1a1  guibg=#002b36
hi  perlStatementFileDesc                   guifg=#2aa198  guibg=#002b36
hi  perlVarPlain                            guifg=#b58900  guibg=#002b36

hi  rubyDefine                              guifg=#93a1a1  guibg=#002b36  gui=bold

hi  texMathMatcher                          guifg=#b58900  guibg=#002b36
hi  texMathZoneX                            guifg=#b58900  guibg=#002b36
hi  texRefLabel                             guifg=#b58900  guibg=#002b36
hi  texStatement                            guifg=#2aa198  guibg=#002b36

hi  vimCmdSep                               guifg=#268bd2  gui=bold
hi  vimCommand                              guifg=#b58900
hi  vimCommentString                        guifg=#6c71c4
hi  vimGroup                                guifg=#268bd2  gui=bold,underline
hi  vimHiGroup                              guifg=#268bd2
hi  vimHiLink                               guifg=#268bd2
hi  vimIsCommand                            guifg=#657b83
hi  vimSynMtchOpt                           guifg=#b58900
hi  vimSynType                              guifg=#2aa198

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
hi link hsModuleStartLabel         hsStructure
hi link hsModuleWhereLabel         hsModuleStartLabel
hi link htmlLink                   Function

hi link lCursor                    Cursor

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
hi link vipmVar                    Identifier

hi clear SyntasticErrorLine
hi clear SyntasticWarningLine
hi clear helpLeadBlank
hi clear helpNormal
hi clear pandocTableStructre
