call plug#begin('~/.config/nvim/plugged')
Plug 'weynhamz/vim-plugin-minibufexpl'
Plug 'vim-airline/vim-airline'
Plug 'derekwyatt/vim-scala'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
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
Plug 'benekastah/neomake'
Plug 'junegunn/vim-easy-align'
Plug 'exu/pgsql.vim'
Plug 'bogado/file-line'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/csv.vim'
Plug 'rodjek/vim-puppet'
Plug 'milkypostman/vim-togglelist'
Plug 'racer-rust/vim-racer'
call plug#end()

" %s///g by default!
set gdefault
set ignorecase
" only ignore case if all lower case
set smartcase
set wildmode=list:longest
" hide buffers instead of closing them
set hidden
set ruler
" remember more commands and search history
set history=1000
" use many muchos levels of undo
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
" change the terminal's title
set title
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

" faster regexp engine
let re=1

let mapleader = ","
let maplocalleader = "\\"

" Make shift tab to real tabs since tab is mapped to CTRL
inoremap <S-Tab> <C-V><Tab>

" rotate current window through buffers (next)
nnoremap <leader>n :bn<CR>
" rotate current window through buffers (previous)
nnoremap <leader>m :bp<CR>

" yank with ,c to the system clipboard
vnoremap <silent> <leader>c "+y

" fuzzy find files
nnoremap <silent> <leader>, :Files<CR>

" fix issue where C-h is captured as backspace but really you want to move
" buffers
nmap <BS> <C-W>h
" Move cursor between buffers
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <F8> :TagbarToggle<CR>

let g:rainbow_active = 1
let NERDTreeIgnore=['\.pyc', '\.hi', '\.o', '\.beam']

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" run neomake on buffer write
autocmd! BufWritePost *.go Neomake
autocmd! BufWritePost *.rs Neomake cargo
