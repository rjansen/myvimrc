" Config
set relativenumber
set nrformats+=alpha
let g:NERDTreeMapOpenInTabSilent = 'T'

" Ruby Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:polyglot_disabled = ['go']
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_ruby_checkers = ['rubocop', 'reek']
let g:vimrubocop_config = '.rubocop.yml'
let g:reek_on_loading = 0

" Ale config
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
autocmd FileType javascript.jsx set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4
