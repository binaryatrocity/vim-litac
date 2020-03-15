" Vim filetype plugin file
" Language:     LitaC
" Maintainer:   Brandon Cornejo (br4n@atr0phy.net)

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
    finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" setlocal commentstring& define& include&
" 
" if exists('&ofu')
"     setlocal ofu=ccomplete#Complete
" endif


" treat @ as part of a word
setlocal iskeyword+=@-@
