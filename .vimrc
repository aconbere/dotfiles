filetype off
call pathogen#runtime_append_all_bundles()

set gdefault " %s///g by default!
set nocompatible
set hidden " hide buffers instead of closing them
set autoindent
set copyindent
set ignorecase
set smartcase " only ignore case if all lower case
set mouse=a
set wildmode=list:longest
set ruler

set history=1000 " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title " change the terminal's title

set nobackup

set softtabstop=2
set shiftwidth=2
set tabstop=2
set smarttab
set expandtab
set backspace=indent,eol,start
set pastetoggle=<F2>

let NERDTreeIgnore=['\.pyc', '\.hi', '\.o', '\.beam']
let mapleader = ","

nmap <silent> <leader>s :set nolist!<CR>
nmap <silent> <leader>n :NERDTreeToggle<CR>
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l
nmap <leader>t :CommandT<CR>
" Get rid of help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

filetype plugin indent on
colorscheme vividchalk
syntax on

set dir^=//home/aconbere/.vimswap
