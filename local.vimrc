" Config
set relativenumber
set nrformats+=alpha
let g:NERDTreeMapOpenInTabSilent = 'T'

" Ruby Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop', 'reek']
let g:vimrubocop_config = '.rubocop.yml'
let g:reek_on_loading = 0

" CtrlP map 
set runtimepath^=~/.vim/bundle/ctrlp.vim
