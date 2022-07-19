require('dap')
require('dap-python').setup('python')
require("dapui").setup()
require("nvim-dap-virtual-text").setup()

vim.fn.sign_define('DapStopped', {
    text='▶', texthl='WarningMsg',linehl='DapUIBreakpointsCurrentLine', numhl='ModeMsg'})

vim.fn.sign_define('DapBreakpoint', {
    text='●', texthl='ErrorMsg', linehl='', numhl=''})

vim.fn.sign_define('DapBreakpointCondition', {
    text='⊕', texthl='ErrorMsg', linehl='', numhl=''})

vim.fn.sign_define('DapLogPoint', {
    text='!!', texthl='ErrorMsg', linehl='', numhl=''})

vim.fn.sign_define('DapBreakpointRejected', {
    text='⨷', texthl='ErrorMsg', linehl='', numhl=''})

