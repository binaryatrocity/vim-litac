" Vim syntax file
" Language:     Litac
" Maintainer:   Brandon Cornejo <br4n@atr0phy.net>

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

syntax keyword litaCStatement   goto break return continue
syntax keyword litaCLabel       case default
syntax keyword litaCConditional if else switch
syntax keyword litaCRepeat      while for do
syntax keyword litaCOthers      func var
syntax keyword litaCStructure   struct union
syntax keyword litaCTypedefs    typedef
syntax keyword litaCImports     import include foreign
syntax keyword litaCStorage     const public

syntax keyword litaCTypes       i8 i16 i32 i64 u8 u16 u32 u64 f32 f64 bool

syntax keyword litaCBools       true false       
syntax keyword litaCTodo        TODO XXX FIXME NOTE

" Operators
syntax match litaCOperator "\v\s+!"
syntax match litaCOperator "\v\%"
syntax match litaCOperator "\v\^"
syntax match litaCOperator "\v\&"
syntax match litaCOperator "\v\*"
syntax match litaCOperator "\v-"
syntax match litaCOperator "\v\+"
syntax match litaCOperator "\v\="
syntax match litaCOperator "\v\|"
syntax match litaCOperator "\v\/"
syntax match litaCOperator "\v\<"
syntax match litaCOperator "\v\>"

" Match LitaC number types
syntax match litaCNumber "\v<\d+>"
syntax match litaCNumber "\v<\d+\.\d+>"
syntax match litaCNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match litaCNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match litaCNumber "\v<0b[01]+>"
syntax match litaCNumber "\v<0o\o+>"

" Match strings
syntax region litaCString start=/"/ skip=/\\"/ end=/"/ oneline
syntax region litaCString start=/'/ skip=/\\'/ end=/'/ oneline

" litaCCommentGroup allows adding matches for special things in comments
syntax cluster litaCCommentGroup contains=litaCTodo

" String and Character constants
" Highlight special characters (those which have a backslash) differently
syntax match litaCSpecial display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"

" Highlight % items in strings
syntax match litaCFormat  display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([aAbdiuoxXDOUfFeEgGcCsSpn]\|\[\^\=.[^]]*\]\)" contained

" Curly brace blocks
syntax region litaCBlock start="{" end="}" transparent fold

" Comments
syntax region litaCLineComment start="//" skip="\\$" end="$" keepend
syntax region litaCBlockComment matchgroup=litaCBlockCommentStart start="/\*" end="\*/" contains=@litaCCommentGroup,litaCString,litaCNumber fold extend


" Set highights
highlight default link litaCTodo Todo
highlight default link litaCLineComment Comment
highlight default link litaCBlockComment Comment
highlight default link litaCBlockCommentStart Comment

highlight default link litaCString String
highlight default link litaCNumber Number
highlight default link litaCBools Boolean
highlight default link litaCImports Include
highlight default link litaCOperator Operator
highlight default link litaCConditional Conditional
highlight default link litaCRepeat Repeat
highlight default link litaCLabel Label
highlight default link litaCStatement Statement
highlight default link litaCTypedefs Typedef
highlight default link litaCOthers Keyword
highlight default link litaCStructure Structure
highlight default link litaCTypes Type
highlight default link litaCStorage StorageClass
