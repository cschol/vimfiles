" Set new leader ky
let mapleader = ","

" Alternative binding for exiting insert mode
imap jj <Esc>

" NERDTree
nmap <F2> :NERDTreeToggle<CR>

" Shortcuts for window management
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Disable evil arrow keys ;)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Custom functions
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>v V`] " Highlight what was just pasted
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader><space> :nohls<CR>
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" ack & ag (the silver searcher)
map <leader>f :Ack!<Space>
map <leader>a :Ag!<Space>

" ctrl-p
nmap ; :CtrlPBuffer<CR>
