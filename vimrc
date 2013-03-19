" It is the 21st century after all...
set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" List of Bundles
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-liquid'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'tomasr/molokai'
Bundle 'epmatsw/ag.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-sensible'
Bundle 'airblade/vim-gitgutter'
Bundle 'int3/vim-extradite'
Bundle 'godlygeek/tabular'
Bundle 'Raimondi/delimitMate'
Bundle 'Shougo/neocomplcache'
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-repeat'
"Bundle 'MarcWeber/ultisnips.git'
"Bundle 'tpope/vim-endwise'
"Bundle 'wincent/Command-T.git'
"Bundle 'vim-scripts/Auto-Pairs'
"Bundle 'msanders/snipmate.vim'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'vim-scripts/YankRing.vim'
Bundle 'tsaleh/vim-supertab'
"Bundle 'scrooloose/syntastic'

" Undo settings
if !isdirectory(expand("~/.vim/undofiles"))
    silent execute '!mkdir ~/.vim/undofiles'
endif
if v:version >= 703
    set undodir=~/.vim/undofiles
    set undofile
endif

if v:version >= 700
    set viminfo=!,'20,<50,s10,h
endif

scriptencoding utf-8

colorscheme solarized

" Disable modeline due to security risk
set modelines=0

set hidden

" Backup settings
set nobackup
set nowritebackup
set noswapfile

" Set up mouse for terminal
set mouse=a
set ttymouse=xterm2
set nomousehide 

" Disable visual bell
set vb t_vb=

set ttyfast

set nowrap
set whichwrap=h,l,~,[,]

" from tpope's configuration
set incsearch
set lazyredraw
set scrolloff=1
set showcmd
set smartcase
set virtualedit=block
set showmatch

" Tabs and indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround

" Line numbering
set number

set wildmenu
set wildmode=longest:full,full
set wildignore=.svn,CVS,.git
set wildignore+=*.o,*.a,*.so
set wildignore+=*.jpg,*.png,*.gif
set wildignore+=*.pyc,*.pyo
set wildignore+=tags,TAGS

set infercase

set wrapscan
set hlsearch

set showmode

set hidden

" Make ESC work faster
set ttimeoutlen=50

" Status bar configuration
set statusline=\ "
set statusline+=%f\ " file name
set statusline+=[
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=]
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=%= " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

" Window splitting
set splitbelow
set splitright

" Load other configuration files
source ~/.vim/keybindings.vim

" ack & ag
let g:ackprg="ack -H --nocolor --nogroup --column"
let g:agprg="ag --nocolor --nogroup --column"

" NERDTree
let NERDTreeHijackNetrw = 0
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']

" Snipmate
let g:snippets_dir="~/.vim/bundle/snipmate-snippets"
source ~/.vim/bundle/snipmate-snippets/support_functions.vim

" Tags
set tags=./TAGS;/

" ctrl-p
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc)$|(^|[/\\])\.(hg|git|svn|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
" from tpope
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" GitGutter
let g:gitgutter_on_bufenter = 0
let g:gitgutter_all_on_focusgained = 0

" delimitMate
let delimitMate_nesting_quotes = ['"','`']
au FileType python let b:delimitMate_nesting_quotes = ['"']

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_disable_auto_complete = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_max_list = 15
let g:neocomplcache_force_overwrite_completefunc = 1
let g:neocomplcache_auto_completion_start_length = 3

" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist'
    \ }

" Define keyword, for minor languages
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" SuperTab
let g:SuperTabContextDefaultCompletionType = '<C-X><C-U>'

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

let g:neocomplcache_omni_patterns['python'] = ''
