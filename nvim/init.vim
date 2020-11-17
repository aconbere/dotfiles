call plug#begin('~/.config/nvim/plugged')
"Fancy status bar
Plug 'vim-airline/vim-airline'

" Gives some basic file navigation
Plug 'scrooloose/nerdtree'

" Enables easy table creation
Plug 'godlygeek/tabular'

" Paints brackets with different colors for easier matching
Plug 'luochen1990/rainbow'

" Mostly used for :GBlame
Plug 'tpope/vim-fugitive'

" Enables opening files with <filename>:line from the command line
Plug 'bogado/file-line'

" Enable stuff like :find to work on Java applications
" Plug 'tpope/vim-classpath'

" CTags integration
" Plug 'majutsushi/tagbar'

" Clojure stuff
" Plug 'tpope/vim-leiningen'
" Plug 'guns/vim-clojure-static'
" Plug 'guns/vim-sexp'
" Plug 'guns/vim-clojure-highlight'

" Async linting, building, code checking etc.
Plug 'benekastah/neomake'

" Allos for easy alignment against a character or string like '='
Plug 'junegunn/vim-easy-align'

" Fuzzy finding, used with ,,
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


Plug 'tpope/vim-vividchalk'

" Go support
Plug 'fatih/vim-go'

" General SQL highlighting
Plug 'exu/pgsql.vim'

" CSV Support
Plug 'chrisbra/csv.vim'

" Scala support
Plug 'derekwyatt/vim-scala'

" Rust support
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
call plug#end()

" %s///g by default!
set gdefault

" when searching don't care about case
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

" Stop backup files from being made
" Hide them in vimswap for easy deleting
set nobackup
set backupdir^=~/.vimswap
set directory^=~/.vimswap

" Everything should be two spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
filetype plugin indent on

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
nnoremap <silent> <leader>, :Rg<CR>

" fix issue where C-h is captured as backspace but really you want to move
" buffers
nmap <BS> <C-W>h
" Move cursor between buffers
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let g:rainbow_active=1
let NERDTreeIgnore=['\.pyc', '\.hi', '\.o', '\.beam']

" let g:neomake_cpp_enable_makers = ['clang']
" let g:neomake_cpp_clang_maker = {'exe': 'avr-g++'}
" let g:neomake_cpp_clang_args = ['-std=c++14', '-Wall', '-Wextra', '-Weverything', '-pedantic']
" autocmd! BufWritePost *.cpp Neomake clang
" autocmd! BufWritePost *.cpp Neomake clangtidy



" run neomake on buffer write
autocmd! BufWritePost *.go Neomake
autocmd! BufWritePost *.rs Neomake cargo

let g:neomake_virtualtext_prefix = ''
" hi NeomakeVirtualtextError ctermbg=8 ctermfg=yellow
hi NeomakeVirtualtextError ctermfg=yellow
hi NeomakeVirtualtextWarning ctermbg=black ctermfg=red


" Set .p8 files (pico8) to be parsed as lua
au BufRead,BufNewFile *.p8 set filetype=lua

" If the filetype is Makefile then we need to use tabs
" So do not expand tabs into space.
autocmd FileType make set noexpandtab

