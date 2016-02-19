call plug#begin('~/.config/nvim/plugged')
Plug 'weynhamz/vim-plugin-minibufexpl'
Plug 'vim-airline/vim-airline'
Plug 'derekwyatt/vim-scala'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rust-lang/rust.vim'
Plug 'luochen1990/rainbow'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-leiningen'
Plug 'tpope/vim-classpath'
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-sexp'
Plug 'guns/vim-clojure-highlight'
Plug 'tpope/vim-vividchalk'
call plug#end()

set gdefault " %s///g by default!
set ignorecase
set smartcase " only ignore case if all lower case
set wildmode=list:longest
set hidden " hide buffers instead of closing them
set ruler
set history=1000 " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title " change the terminal's title
set mouse=i
set nobackup
set backupdir^=~/.vimswap
set directory^=~/.vimswap
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

colorscheme vividchalk
syntax on

let mapleader = ","
let maplocalleader = "\\"

nnoremap <leader>n :bn<CR>
nnoremap <leader>m :bp<CR>
" yank with ,y to the system clipboard
vnoremap <leader>y "+y

if has('nvim')
  " broken C-h capture in tmux
  nmap <BS> <C-W>h
endif
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nmap <F8> :TagbarToggle<CR>
let g:rainbow_active = 1
let NERDTreeIgnore=['\.pyc', '\.hi', '\.o', '\.beam']
let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', '^fnk', '^dfnk']
let g:clojure_fuzzy_indent_blacklist = ['-fn$', '\v^with-%(meta|out-str|loading-context)$']
