" Set new leader ky
let mapleader = ","

" Alternative binding for exiting insert mode
imap jj <Esc>

" NERDTree
nmap <F2> :NERDTreeToggle<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Shortcuts for window management
"FIXME This interferes with tmux bindings (C-l)
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

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

" ack & ag
map <leader>f :Ack!<Space>
map <leader>a :Ag!<Space>

" ctrl-p
nmap ; :CtrlPBuffer<CR>

" Access to error buffers
map <F3> :cnext<CR>
map <F4> :cc<CR>
map <F5> :cprev<CR>

" Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>

nnoremap <leader>c :bp\|bd #<CR>

" neocomplcache
"inoremap <expr><C-g> neocomplcache#undo_completion()
"inoremap <expr><C-l> neocomplcache#complete_common_string()
"inoremap <expr><TAB> pumvisible() ? neocomplcache#close_popup() : "\<TAB>"
"inoremap <expr><s-CR> pumvisible() ? neocomplcache#close_popup()"\<CR>" : "\<CR>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y> neocomplcache#close_popup()
"inoremap <Nul> neocomplcache#manual_complete()

