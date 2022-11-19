-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[colorscheme nightfox]]

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'bogado/file-line'
    use 'hrsh7th/nvim-cmp'
    use 'gpanders/editorconfig.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'mhartington/formatter.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
end)

-- NOTE: Need to install prettierd globally for these to work
-- > npm install -g @fsouza/prettierd
require('formatter').setup({
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.INFO,
  filetype = {
    javascript = {
        require('formatter.filetypes.javascript').prettierd
    },
    javascriptreact = {
        require('formatter.filetypes.javascriptreact').prettierd
    },
    typescript = {
        require('formatter.filetypes.typescript').prettierd
    },
    typescriptreact = {
        require('formatter.filetypes.typescriptreact').prettierd
    },
  }
})
