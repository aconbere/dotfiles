local map = vim.api.nvim_set_keymap

options = {
    noremap = true
}
voptions = {
    noremap = true,
    silent = true
}

map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)

map('v', '<leader>c', '"+y', voptions)
map('v', '<leader>y', '"+y', voptions)
map('v', '<leader>Y', '"*y', voptions)
map('v', '<leader>p', '"+p', voptions)
map('v', '<leader>P', '"*p', voptions)

-- telescope functions
map('n', '<leader>,', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', options)
map('n', '<leader>.', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', options)
map('n', '<leader>fb', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', options)
map('n', '<leader>fh', '<cmd>lua require(\'telescope.builtin\').help_tags()<cr>', options)


-- Move cursor between buffers
map('n', '<C-h>', '<C-w>h', options);
map('n', '<C-j>', '<C-w>j', options);
map('n', '<C-k>', '<C-w>k', options);
map('n', '<C-l>', '<C-w>l', options);

