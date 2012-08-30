" License: http://tokuhirom.mit-license.org/

" \v makes better foo

if exists("b:current_syntax")
  finish
endif

syn keyword trKeywords class for undefined true false sub if next last this return else initialize undef while elsif static alias export
syn keyword trBuiltinFunctions say p open int
syn keyword trBuiltinMethods bless new
syn keyword trStorage my
syn match   trComment  /#.*/
syn match   trStringDQ   /".*"/
syn match   trStringSQ   /'.*'/
syn match   trArrow   /->/
syn match   trLabel  /[A-Za-z_]\+:/
syn match   trVariable  /\$[A-Za-z_]\+/

syn match  trNumber   "\<\%(0\%(x\x[[:xdigit:]_]*\|b[01][01_]*\|\o[0-7_]*\|\)\|[1-9][[:digit:]_]*\)\>"

syntax region trDATA  start="\v^__(DATA|END)__$" skip="." end="."

hi def link trKeywords         Keyword
hi def link trBuiltinFunctions Statement
hi def link trBuiltinMethods   Statement
hi def link trDATA     Comment
hi def link trComment  Comment
hi def link trStringSQ String
hi def link trStringDQ String
hi def link trNumber   Number
hi def link trArrow    Keyword
hi def link trStorage  Keyword
hi def link trLabel    Identifier
hi def link trVariable Identifier

let b:current_syntax = "tora"

