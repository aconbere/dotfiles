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
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'bogado/file-line'
    use 'hrsh7th/nvim-cmp'

    use 'ayu-theme/ayu-vim'
    use 'tpope/vim-vividchalk'
    use 'shaunsingh/solarized.nvim'
    use 'EdenEast/nightfox.nvim'

    use '~/projects/test.nvim'

    use 'mhartington/formatter.nvim'

    use 'ziglang/zig.vim'

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

local prettier = function()
    return {
        exe = "prettier",
        args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
        stdin = true
    }
end

require('formatter').setup({
  filetype = {
    javascript = {prettier},
    javascriptreact = {prettier},
    typescript = {prettier},
    typescriptreact = {prettier},
  }
})

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx, FormatWrite
augroup END
]], true)
