set nocompatible
set mouse=a
set wildmode=list:longest
set ruler

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set backspace=indent,eol,start

let NERDTreeIgnore=['\.pyc', '\.hi', '\.o', '\.beam']

nmap <silent> <leader>s :set nolist!<CR>
nmap <silent> <C-n> :NERDTreeToggle<CR>
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

:filetype on
:filetype plugin on
colorscheme vividchalk
syntax on
