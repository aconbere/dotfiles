-- global options
local o = vim.o
-- window options
local wo = vim.wo
-- buffer options
local bo = vim.bo

vim.opt_global.completeopt = { "menu", "noinsert", "noselect" }
o.completeopt = "menuone,noselect"

-- %s///g by default!
o.gdefault = true

-- when searching don't care about case
o.ignorecase = true

-- when searching don't care about case
o.smartcase = true

-- hide buffers instead of closing them
o.hidden = true

o.wildmode = "list:longest"
o.wildignore = "*.swap,*.bak,*.pyc,*.class"

o.ruler = true

o.history = 10000
o.undolevels = 1000

o.title = true
o.mouse = "i"
o.backup = false
o.dir = "/tmp"

o.termguicolors = true

bo.softtabstop = 4
o.shiftwidth = 4
bo.tabstop = 4
bo.expandtab = true
