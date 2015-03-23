set nocompatible
set modeline
set modelines=5
filetype off

set rtp+=~/.vim/bundle/vundle/
set shell=/bin/bash
set backupdir=~/.swp
set directory=~/.swp
call vundle#rc()


Bundle 'gmarik/vundle'
Bundle 'derekwyatt/vim-scala'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-leiningen'
Bundle 'tpope/vim-classpath'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'fatih/vim-go'
Bundle 'kien/ctrlp.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'guns/vim-clojure-static'
Bundle 'guns/vim-sexp'
Bundle 'tpope/vim-fireplace'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'guns/vim-clojure-highlight'

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
"let g:syntastic_disabled_filetypes = ['java']
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

snoremap ; :

filetype plugin indent on

let g:solarized_contrast="high"
"colorscheme solarized
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

