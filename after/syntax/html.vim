" Override underlining of entire content between <a></a> tags
" http://vim.1045645.n5.nabble.com/Smarter-Vim-display-of-a-tags-tp1174164p1174168.html
syn match htmlLinkWhite /\s\+/ contained containedin=htmlLink
hi default htmlLinkWhite term=NONE cterm=NONE gui=NONE
