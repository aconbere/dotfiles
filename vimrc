set nocompatible
set modeline
set modelines=5
set shell=/bin/bash
set backupdir=~/.swp
set directory=~/.swp
set encoding=utf-8

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'derekwyatt/vim-scala'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-classpath'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-fireplace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'guns/vim-clojure-highlight'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

if has("gui_running")
  set guioptions=aAic
  set clipboard=unnamed
endif

set gdefault " %s///g by default!
set nocompatible
set hidden " hide buffers instead of closing them
set autoindent
set copyindent
set ignorecase
set smartcase " only ignore case if all lower case
" set mouse=a
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
set expandtab
set tabstop=2
set smarttab
set backspace=indent,eol,start
set pastetoggle=<F2>
set t_Co=256
set background=dark
"set list
"set listchars=eol:¬,extends:»,tab:▸\ ,trail:›

let NERDTreeIgnore=['\.pyc', '\.hi', '\.o', '\.beam']
let g:easytags_on_cursorhold = 0
let mapleader = ","
let maplocalleader = "\\"

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

map <F7> mzgg=G`z<CR>

" Get rid of help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nnoremap <leader>. :CtrlPTag<cr>

colorscheme vividchalk
syntax on

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', '^fnk', '^dfnk']
let g:clojure_fuzzy_indent_blacklist = ['-fn$', '\v^with-%(meta|out-str|loading-context)$']

"better solarized rainbow parens
let g:rbpt_colorpairs = [
  \ [ '13', '#6c71c4'],
  \ [ '5',  '#d33682'],
  \ [ '1',  '#dc322f'],
  \ [ '9',  '#cb4b16'],
  \ [ '3',  '#b58900'],
  \ [ '2',  '#859900'],
  \ [ '6',  '#2aa198'],
  \ [ '4',  '#268bd2'],
  \ ]
