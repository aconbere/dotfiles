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

" faster regexp engine
let re=1

let mapleader = ","
let maplocalleader = "\\"

inoremap <S-Tab> <C-V><Tab>
nnoremap <leader>n :bn<CR>
nnoremap <leader>m :bp<CR>
" yank with ,y to the system clipboard
vnoremap <silent> <leader>c "+y

" fuzzy find files
nnoremap <silent> <leader>, :Files<CR>

map <F7> mzgg=G`z
nmap <BS> <C-W>h
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

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nmap <F8> :TagbarToggle<CR>

let g:rainbow_active = 1
let NERDTreeIgnore=['\.pyc', '\.hi', '\.o', '\.beam']
let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', '^fnk', '^dfnk']
let g:clojure_fuzzy_indent_blacklist = ['-fn$', '\v^with-%(meta|out-str|loading-context)$']

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

autocmd! BufWritePost * Neomake
