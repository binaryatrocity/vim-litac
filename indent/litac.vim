" Vim indent file
" Language:     C
" Maintainer:   Brandon Cornejo <br4@atr0phy.net>

" Only load this indent file when no other was loaded
if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

" Use C indenting, should work pretty well
setlocal cindent

let b:undo_indent = "setl cin<"
