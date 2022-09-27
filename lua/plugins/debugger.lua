local dap = require('dap')
local dapui = require("dapui")

dapui.setup()
require("nvim-dap-virtual-text").setup({
    virt_text_win_col = 30
})

require('dap-python').setup("python")


dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

vim.fn.sign_define('DapStopped', {
    text='▶', texthl='WarningMsg',linehl='DapUIBreakpointsCurrentLine', numhl='ModeMsg'})

vim.fn.sign_define('DapBreakpoint', {
    text='●', texthl='ErrorMsg', linehl='', numhl=''})

vim.fn.sign_define('DapBreakpointCondition', {
    text='⊕', texthl='ErrorMsg', linehl='', numhl=''})

vim.fn.sign_define('DapLogPoint', {
    text='', texthl='ErrorMsg', linehl='', numhl=''})

vim.fn.sign_define('DapBreakpointRejected', {
    text='⨷', texthl='ErrorMsg', linehl='', numhl=''})

