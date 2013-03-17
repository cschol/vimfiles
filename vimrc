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
Bundle 'MarcWeber/ultisnips.git'
Bundle 'vim-scripts/Auto-Pairs'
Bundle 'int3/vim-extradite'
"Bundle 'wincent/Command-T.git'
"Bundle 'Raimondi/delimitMate'
"Bundle 'msanders/snipmate.vim'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'vim-scripts/YankRing.vim'
"Bundle 'tpope/vim-vividchalk'
"Bundle 'tsaleh/vim-supertab'
"Bundle 'Shougo/neocomplcache'
"Bundle 'scrooloose/syntastic'

" Undo settings
if !isdirectory(expand("~/.vim/undofiles"))
    silent execute '!mkdir ~/.vim/undofiles'
endif
if v:version >= 703
    set undodir=~/.vim/undofiles
    set undofile
endif

scriptencoding utf-8

set background=dark
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

" Tabs and indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround

" Line numbering
set number

set nowildmenu
set wildmode=list:longest,full
set wildignore=.svn,CVS,.git
set wildignore+=*.o,*.a,*.so
set wildignore+=*.jpg,*.png,*.gif
set wildignore+=*.pyc,*.pyo

set infercase
set completeopt=menuone,preview

set wrapscan
set hlsearch

set showmode

set hidden

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

set helpheight=10

" Load other configuration files
source ~/.vim/keybindings.vim

" ack
let g:ackprg="ack -H --nocolor --nogroup --column"

" ag
let g:agprg="ag --nocolor --nogroup --column"

" NERDTree
let NERDTreeHijackNetrw = 0
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDChristmasTree = 1
let g:NERDTreeChDirMode=2

" Snipmate
let g:snippets_dir="~/.vim/bundle/snipmate-snippets"
source ~/.vim/bundle/snipmate-snippets/support_functions.vim

" Tags
set tags=./TAGS;/

" ctrl-p
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

" GitGutter
let g:gitgutter_on_bufenter = 0
let g:gitgutter_all_on_focusgained = 0

