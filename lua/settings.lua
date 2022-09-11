local o  = vim.o  -- global options
local wo = vim.wo -- window local options
local cmd = vim.cmd -- vim commands
local g = vim.g -- vim variables, like g:variable = something

cmd [[syntax enable]]
cmd [[filetype plugin indent on]]
cmd [[set hidden]]
cmd [[set clipboard+=unnamedplus]]
cmd [[set signcolumn=yes:1]]

-- providers
vim.g["python3_host_prog"] = "~/venv/bin/python"
vim.g["loaded_ruby_provider"] = 0
vim.g["loaded_perl_provider"] = 0

-- colors
require('colorschemes.tokyonight_config')
require('colorschemes.catppuccin_config')
vim.cmd [[colorscheme tokyonight]]

-- tabs and spaces
o.tabstop = 4
o.expandtab = true
o.shiftwidth = 4
o.softtabstop = 4

-- remove clutter
o.swapfile = false
o.writebackup = false
o.shortmess= o.shortmess .. 'c'

-- line numbers
wo.linebreak = true
o.number = true

-- appearance
wo.conceallevel = 2
o.splitbelow = true
o.splitright = true
o.shiftround = true
o.wrap = false
o.cmdheight = 1
o.foldlevelstart = 2
o.showmatch = true  -- show bracket macthing

-- spelling
o.spell = true
o.spelllang = { 'en_us' }

-- search case
o.ignorecase = true
o.smartcase = true

-- misc
o.mouse = "a"
o.hidden = true -- allow unsaved buffers
o.completeopt = "menuone,noselect" -- completion type

-- performance
o.updatetime = 100
o.timeoutlen = 600
o.lazyredraw = true

-- bufferline
g.bufferline = {
    icon_pinned = '車',
    insert_at_end = true,
    icons = 'both'
}
