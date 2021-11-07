call plug#begin('~/.config/nvim/plugged')
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

Plug 'neovim/nvim-lspconfig'

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
" Plug 'fatih/vim-go'

" General SQL highlighting
" Plug 'exu/pgsql.vim'

" CSV Support
" Plug 'chrisbra/csv.vim'

" Scala support
" Plug 'derekwyatt/vim-scala'

" Rust support
" Plug 'rust-lang/rust.vim'
" Plug 'racer-rust/vim-racer'

"
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
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
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

filetype on
filetype plugin on
filetype indent on

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

" yank to the system clipboard
vnoremap <silent> <leader>c "+y
vnoremap <silent> <leader>y "+y
vnoremap <silent> <leader>Y "*y
vnoremap <silent> <leader>p "+p
vnoremap <silent> <leader>P "*p

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

" Set .p8 files (pico8) to be parsed as lua
au BufRead,BufNewFile *.p8 set filetype=lua

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    +-- current column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer

" let g:coc_global_extensions = [
"   \ 'coc-tsserver',
"   \ 'coc-prettier',
"   \ 'coc-go',
"   \ ]

" Using Lua functions
nnoremap <leader>, <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

lua <<EOF

vim.o.completeopt = "menuone,noselect"

local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    vim.api.nvim_command('inoremap <C-space> <C-x><C-o>')
    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', 'W', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)


end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'rls', 'gopls', 'tsserver' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
EOF
