" It is the 20st century after all...
set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" List of Plugins
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'scrooloose/snipmate-snippets'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-liquid'
Plugin 'thomwiggers/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tomasr/molokai'
Plugin 'rking/ag.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-sensible'
Plugin 'airblade/vim-gitgutter'
Plugin 'int3/vim-extradite'
Plugin 'godlygeek/tabular'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-vividchalk'
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'
Plugin 'goldfeld/vim-seek'
Plugin 'ervandew/supertab'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-commentary'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'othree/html5.vim'

call vundle#end()
filetype plugin indent on

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
set background=dark

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

" Tab formatting
set guitablabel=\[%N\]\ %t\ %M

" Ruby is special...
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Line numbering
set number
set relativenumber

set wildmenu
set wildmode=longest:full,full
set wildignore=.svn,CVS,.git,.hg,.bzr
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
let g:ctrlp_lazy_update = 1
let g:ctrlp_by_filename = 1
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc)$|(^|[/\\])\.(hg|git|svn|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', 'ag %s -l --nocolor -g ""']
else
    let g:ctrlp_max_files = 10000
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', 'find %s -type f | head -' . g:ctrlp_max_files]
endif

" GitGutter
let g:gitgutter_on_bufenter = 0
let g:gitgutter_all_on_focusgained = 0

" delimitMate
let delimitMate_nesting_quotes = ['"','`']
au FileType python let b:delimitMate_nesting_quotes = ['"']

" neocomplete

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Don't autocomplete
let g:neocomplete#disable_auto_complete = 1

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" FIXME See if we still need this
" SuperTab
"let g:SuperTabContextDefaultCompletionType = '<C-X><C-U>'

" Tagbar
let g:tagbar_width = 60

" airline/Powerline
let g:airline_powerline_fonts = 1

" Toggle between normal and relative line numbers
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set number
        set relativenumber
    endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

nmap g/ :vimgrep /<C-R>//j %<CR>\|:cw<CR>

" Macro to wrap a single line in curly braces and reindent
let @c='==O{jddkkPjddkw=='

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

