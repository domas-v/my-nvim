require('packages')
require('settings')
require('maps')
require('custom_commands')

vim.cmd [[source ~/.config/nvim/vimscript/custom.vim]]
vim.cmd [[runtime macros/sandwich/keymap/surround.vim]]
