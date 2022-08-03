local map = vim.api.nvim_set_keymap
local g = vim.g

local options = { noremap = true}
local silent_options = { noremap = true, silent = true }

-- leader
map('n', '<Space>', '', {})
g.mapleader = ' '

-- search
map('n', '<esc>', ':nohlsearch<cr>', silent_options)
map('n', '<c-s>', '/', options)
map('i', '<c-s>', '<esc>/', options)
map('v', '<c-s>', '/', options)

-- accelerated movement
map('n', 'j', '<Plug>(accelerated_jk_gj)', {})
map('n', 'k', '<Plug>(accelerated_jk_gk)', {})

map('n', 's', '<Plug>Lightspeed_omni_s', {})
map('n', 'gs', '<Plug>Lightspeed_omni_gs', {})
map('v', 's', '<Plug>Lightspeed_omni_s', {})
map('o', 'z', '<Plug>Lightspeed_omni_s', {})

-- terminal
map('t', '<C-w>h', '<C-\\><C-n><C-w>h', options)
map('t', '<C-w>j', '<C-\\><C-n><C-w>j', options)
map('t', '<C-w>k', '<C-\\><C-n><C-w>k', options)
map('t', '<C-w>l', '<C-\\><C-n><C-w>l', options)

-- pop up movement
map('i', '<C-j>', 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', {expr = true, noremap = true})
map('i', '<C-k>', 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', {expr = true, noremap = true})
map('c', '<C-k>', '<LEFT>', options)
map('c', '<C-j>', '<RIGHT>', options)
map('t', '<C-x>', '<C-\\><C-N>', options)

-- maintain selection after visual indent
map('v', '<', '<gv', options)
map('v', '>', '>gv', options)

 -- Jump outside any parentheses or quotes:
 map('i', 'jj', [[<Esc>/[)}"'\]>]<CR>:nohl<CR>a<right>]], options)
 map('i', 'kk', [[<Esc>?[)}"'\]>]<CR>:nohl<CR>i<left>]], options)


 -- more shortcuts
 map('n', ';', ':', options)
 map('v', ';', ':', options)

 map('n', 'Y', 'y$', options)
 map('v', 'Y', 'y$', options)
