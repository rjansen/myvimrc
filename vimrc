" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
let $LANG='en' 
set langmenu=en
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

if has('vim_starting')
    set nocompatible    " Be iMproved
    set runtimepath+=~/.vim/bundle/neobundle.vim/    " Note: Required by NoeBundle
endif

" Note: Required by NeoBundle
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required by NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'Shougo/vimproc.vim', {
            \ 'build' : {
            \     'windows' : 'tools\\update-dll-mingw',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make',
            \     'linux' : 'make',
            \     'unix' : 'gmake',
            \    },
            \ }
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'bling/vim-airline'
NeoBundle 'vbundles/ctrlp'
NeoBundle 'Shougo/unite.vim'
"NeoBundle 'nathanaelkane/vim-indent-guides'


call neobundle#end()

" Required by NeoBundle:
"filetype plugin indent on
filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

" uncomment this to profile your vim and find resource hogs
" profile start vimprofile.log
" profile func *
" profile file *
" after quitting run the following commands
" profile pause
" noautocmd qall!

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_java_javac_options='-encoding utf8 -Xlint'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"Airline Configuration
let g:airline_theme='badwolf'
"let g:airline_left_sep=''
"let g:airline_right_sep=''
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_theme_patch_func = 'AirlineThemePatch'
"	function! AirlineThemePatch(palette)
"	if g:airline_theme == 'badwolf'
"		for colors in values(a:palette.inactive)
"			let colors[3] = 245
"		endfor
"	endif
"endfunction

syntax enable    " enable syntax processing

"Color scheme selection.
"desert: built-in scheme
"solorized: needs instalation
"molokai: needs instalation
try
    "let g:solarized_termcolors=256
    "set background=dark
    "colorscheme solarized

    set background=dark
    let g:molokai_original=0
    "let g:rehash256=1
    colorscheme molokai
catch
	colorscheme desert
endtry

set timeoutlen=20
set linespace=0

"set tabstop=4       " number of visual spaces per TAB 
set shiftwidth=4    " 1 tab == 4 spaces
set softtabstop=4   " number of spaces in tab when editing
set expandtab    " Use spaces instead of tabs

" Linebreak on 500 characters
set lbr
set tw=500

set ruler    " Enable ruler
set colorcolumn=120    " Display right column/gutter
set backspace=indent,eol,start    " Backspace setup
set esckeys    " Allow cursor keys in insert mode
set ttyfast    " Optimize for fast terminal connections
set encoding=utf-8 nobomb    " Use UTF-8 without BOM
set termencoding=utf-8 nobomb    " Use UTF-8 without BOM
" Don't add empty newline at EOL
set binary
set noeol

set pastetoggle=<F2>    " Use F2 to toggle pastemode and avoid breaking pasted content
" Respect modeline in files
set modeline
set modelines=4

set laststatus=2    " Always show status line
set showmode    " Show the current mode
set scrolloff=3    " Start scrolling three lines before the horizontal window border

"set ai "Auto indent
"set si "Smart indent
"set wrap "Wrap lines

"set foldenable          " enable folding
"set foldcolumn=1	" Add a bit extra margin to the left
"set foldmethod=syntax	"fold based on the file syntax
"set foldmethod=indent   " fold based on indent level
"set foldlevel=1   " open most folds by default
"set foldlevelstart=1    " open most folds by default 
"set foldnestmax=10     " 10 nested fold max

"let javaScript_fold=1         " JavaScript
"let perl_fold=1               " Perl
"let php_folding=1             " PHP
"let r_syntax_folding=1        " R
"let ruby_fold=1               " Ruby
"let sh_fold_enabled=1         " sh
"let vimsyn_folding='af'       " Vim script
"let xml_syntax_folding=1      " XML

set relativenumber      " show line numbers relative to the cursor
set number              " show line numbers
set showcmd             " show command in bottom bar 
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu

set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches                                                                                                                                              

set mat=2	" How many tenths of a second to blink when matching brackets 

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Tab/Spaces
au FileType * setl sw=4 sts=4 et
"au FileType vim setl sw=4 sts=4 et
"au FileType java setl sw=4 sts=4 et
"au FileType python setl sw=4 sts=4 et
au FileType ruby setl sw=2 sts=2 et


"augroup configgroup
""    autocmd!
"    autocmd VimEnter * highlight clear SignColumn
"    autocmd FileType java setlocal noexpandtab
"    autocmd FileType java setlocal list
"    autocmd FileType php setlocal expandtab
"    autocmd FileType php setlocal list
"    autocmd FileType ruby setlocal tabstop=2
"    autocmd FileType ruby setlocal shiftwidth=2
"    autocmd FileType ruby setlocal softtabstop=2
"    autocmd BufEnter *.cls setlocal filetype=java
"    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
"    autocmd BufEnter Makefile setlocal noexpandtab
"    autocmd BufEnter *.sh setlocal tabstop=2
"    autocmd BufEnter *.sh setlocal shiftwidth=2
"    autocmd BufEnter *.sh setlocal softtabstop=2
"augroup END
