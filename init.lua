require('packages')
require('settings')
require('maps')
require('custom')

vim.cmd [[source ~/.config/nvim/vimscript/custom.vim]]
vim.cmd [[runtime macros/sandwich/keymap/surround.vim]]
vim.g["python3_host_prog"] = "/home/domas/miniconda3/bin/python"
