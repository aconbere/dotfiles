let mapleader = ","

" Set .p8 files (pico8) to be parsed as lua
au BufRead,BufNewFile *.p8 set filetype=lua

lua <<EOF
require('plugins')
require('settings')
require('lsp')
require('maps')
require('statusline')
EOF
