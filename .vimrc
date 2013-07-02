set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'derekwyatt/vim-scala'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'

if has("gui_running")
  set guioptions=aAic
  set clipboard=unnamed
endif

set gdefault " %s///g by default!
set nocompatible
"set hidden " hide buffers instead of closing them
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
set backupdir^=~/.vimswap
set directory^=~/.vimswap

set softtabstop=2
set shiftwidth=2
set tabstop=2
set smarttab
set expandtab
set backspace=indent,eol,start
set pastetoggle=<F2>
set t_Co=256
set background=dark
"set list
"set listchars=eol:¬,extends:»,tab:▸\ ,trail:›

let NERDTreeIgnore=['\.pyc', '\.hi', '\.o', '\.beam']
let g:easytags_on_cursorhold = 0
let mapleader = ","

nmap <silent> <leader>s :set nolist!<CR>
nmap <silent> <leader>e :set nospell!<CR>
nmap <silent> <leader>n :bn<CR>

nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

nmap <silent> <C-M-h> <C-w>H
nmap <silent> <C-M-j> <C-w>J
nmap <silent> <C-M-k> <C-w>K
nmap <silent> <C-M-l> <C-w>L

" Get rid of help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

snoremap ; :

filetype plugin indent on

let g:solarized_contrast="high"
colorscheme solarized
"colorscheme vividchalk
syntax on

