-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- vim.cmd [[colorscheme solarized]]
require('nightfox').load()

require('packer').startup(function()
    use 'neovim/nvim-lspconfig'
    use 'bogado/file-line'

    use 'ayu-theme/ayu-vim'
    use 'tpope/vim-vividchalk'
    use 'shaunsingh/solarized.nvim'
    use 'EdenEast/nightfox.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use {
        'ibhagwan/fzf-lua',
        requires = {
            'vijaymarupudi/nvim-fzf',
            'kyazdani42/nvim-web-devicons'
        }
    }
end)
