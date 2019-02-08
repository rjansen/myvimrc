" Config
set number
set cursorline
set nrformats+=alpha
let g:NERDTreeMapOpenInTabSilent = 'T'

" CtrlP map 
set runtimepath^=~/.vim/bundle/ctrlp.vim

" CSS Autocomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
