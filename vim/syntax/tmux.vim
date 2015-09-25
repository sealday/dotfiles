" Vim syntax file
" Language: tmux.conf

if exists("b:current_syntx")
  finish
endif

setlocal iskeyword+=.

"syn keyword tmuxKeyword bind
"syn keyword tmuxKeyword set
"syn keyword tmuxKeyword option

syn 

" highlight

hi link tmuxKeyword Keyword

"hi link ngxComment Comment
"hi link ngxVariable Identifier
"hi link ngxVariableBlock Identifier
"hi link ngxVariableString PreProc
"hi link ngxBlock Normal
"hi link ngxString String
"
"hi link ngxBoolean Boolean
"hi link ngxDirectiveBlock Statement
"hi link ngxDirectiveImportant Type
"hi link ngxDirectiveControl Keyword
"" hi link ngxDirectiveControl Error
"hi link ngxDirectiveError Constant
"hi link ngxDirectiveDeprecated Error
"hi link ngxDirective Identifier
"hi link ngxDirectiveThirdParty Special

let b:current_syntax = "tmux"
