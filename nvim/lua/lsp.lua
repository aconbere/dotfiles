local lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach_meta = function(options)
    return function(client, bufnr)
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

        -- Enable completion triggered by <c-x><c-o>
        buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

        -- Mappings.
        local opts = { noremap=true, silent=true }

        vim.api.nvim_command('inoremap <C-b> <C-x><C-o>')
        
        -- Competes with prettier
        if (options.format) then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
        end

        -- See `:help vim.lsp.*` for documentation on any of the below functions
        buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
        buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        buf_set_keymap('n', 'gK', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
        buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
        buf_set_keymap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
        buf_set_keymap('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
        buf_set_keymap('n', 'gwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
        buf_set_keymap('n', 'gwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
        buf_set_keymap('n', 'gT', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
        buf_set_keymap('n', 'grn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
        buf_set_keymap('n', 'gca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
        buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
        buf_set_keymap('n', 'ge', '<cmd>lua vim.diagnostic.show_line_diagnostics()<CR>', opts)
        buf_set_keymap('n', '[[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
        buf_set_keymap('n', ']]', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
        buf_set_keymap('n', 'gq', '<cmd>lua vim.diagnostic.set_loclist()<CR>', opts)
        buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.format()<CR>', opts)
    end
end

lsp.tsserver.setup{
    cmd = { "npx", "typescript-language-server", "--stdio" },
    on_attach = on_attach_meta({
        format = false,
    }),
    flags = {
      debounce_text_changes = 150,
    }
}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'rls', 'gopls', 'zls', 'ccls' }

for _, server in ipairs(servers) do
  lsp[server].setup {
    on_attach = on_attach_meta({ format = true }),
    flags = {
      debounce_text_changes = 150,
    }
  }
end

