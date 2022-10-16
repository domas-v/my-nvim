local wk = require("which-key")

local map = vim.api.nvim_set_keymap
local g = vim.g

-- leader
map('n', '<Space>', '', {})
g.mapleader = ' '

-- pop up movement
map('i', '<C-j>', 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', {expr = true, noremap = true})
map('i', '<C-k>', 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', {expr = true, noremap = true})
map('c', '<C-j>', '<LEFT>', { noremap = true })
map('c', '<C-k>', '<RIGHT>', { noremap = true })
map('t', '<C-x>', '<C-\\><C-N>', { noremap = true })

--terminal 
map('t', '<C-w>h', '<C-\\><C-n><C-w>h', { noremap = true })
map('t', '<C-w>j', '<C-\\><C-n><C-w>j', { noremap = true })
map('t', '<C-w>k', '<C-\\><C-n><C-w>k', { noremap = true })
map('t', '<C-w>l', '<C-\\><C-n><C-w>l', { noremap = true })

-- leader keys
wk.register({
    ["."] = { ":lcd %:p:h<cr>:pwd<cr>", "Change to current dir" },
    q = { "<cmd>q<cr>", "Close" },
    Q = { "<cmd>qa<cr>", "Close all" },
    [":"] = { "<cmd>Telescope commands<cr>", "Commands" },
    ["?"] = { "<cmd>Telescope help_tags<cr>", "Help" },
    ["<leader>"] = {
        name = "Misc",
        w = { "<cmd>set wrap!<cr>", "Word wrap" },
        k = { "<cmd>WhichKey<cr>", "Keys" },
        t = { "<cmd>TodoTelescope<cr>", "Todo comments" },
        j = { "<cmd>Telescope jumplist<cr>", "Jump List" },
        z = { "<cmd>TZAtaraxis<cr>", "Toggle zen mode" },
    },

    -- file tree
    ["<TAB>"] = { "<cmd>NeoTreeFocusToggle<cr>", "Neotree" },

    -- file and buffer movement
    f = { "<cmd>Telescope find_files<cr>", "find files" },
    F = { "<cmd>Telescope file_browser<cr>", "file browser" },
    s = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "telescope buffer" },
    r = { "<cmd>Telescope live_grep<cr>", "ripgrep" },
    l = { "<cmd>Telescope buffers<cr>", "buffers" },
    y = { "<cmd>Telescope neoclip<cr>", "clipboard" },
    ["'"] = { "<cmd>Telescope registers<cr>", "registers" },

    -- terminal
    T = { "<cmd>ToggleTerm<cr>", "Toggle Terminal"},
    t = {
        name = "Terminal",
        v = { "<cmd>ToggleTerm direction=vertical<cr>", "Vertical"},
        x = { "<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal"},
        w = { "<cmd>ToggleTerm direction=tab<cr>", "Tab"},
        a = { "<cmd>ToggleTermToggleAll<cr>", "All"},
        ["1"] = { "<cmd>1ToggleTerm<cr>", "Terminal 1"},
        ["2"] = { "<cmd>2ToggleTerm<cr>", "Terminal 2"},
        ["3"] = { "<cmd>3ToggleTerm<cr>", "Terminal 3"},
    },

    -- replace
    R = { ":%s/", "Buffer Replace" },

    -- code navigation
    o = { "<cmd>SymbolsOutline<cr>", "Symbols Outline" },
    c = {
        name = "Code navigation",
        r = { "<cmd>Telescope lsp_references<cr>", "References" },
        d = { "<cmd>Telescope lsp_definitions<cr>", "Definitions" },
        p = { "<cmd>TroubleToggle<cr>", "Problems" },
        s = { "<cmd>Telescope lsp_document_symbols<cr>", "Symbols" },
        S = { "<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols" },
    },

    G = { "<cmd>Neogit<cr>", "Git" },
    g = {
        name = "Git",
        j = { "<cmd>Gitsigns next_hunk<cr>", "Next hunk" },
        k = { "<cmd>Gitsigns prev_hunk<cr>", "Previous hunk" },
        v = { "<cmd>Gitsigns preview_hunk<cr>", "Preview hunk" },

        s = { "<cmd>Gitsigns stage_hunk<cr>", "Stage hunk" },
        u = { "<cmd>Gitsigns undo_stage_hunk<cr>", "Unstage hunk" },
        r = { "<cmd>Gitsigns reset_hunk<cr>", "Reset hunk" },
        b = { "<cmd>GitBlameToggle<cr>", "Blame Toggle" },
    },

    e = {
        name = "Files",
        e = { "<cmd>e<cr>", "Open file" },
        f = { "<cmd>w<cr>", "Save current file" },
        n = { "<cmd>OpenNotes<cr>", "Open notes" },
        c = { "<cmd>OpenConfig<cr>", "Open config" },
        v = { "<cmd>vert sp ", "Split vertical" },
        x = { "<cmd>sp ", "Split horizontal" },
    },

    W = { "<cmd>lua require('nvim-window').pick()<cr>", "Select window" },
    k = { "<cmd>BufferNext<cr>", "Next" },
    j = { "<cmd>BufferPrevious<cr>", "Previous" },
    O = { "<cmd>only<cr>", "Close other" },
    ["*"] = { "<cmd>BufferPin<cr>", "Pin" },
    ["]"] = { "<cmd>BufferMoveNext<cr>", "Move next" },
    ["["] = { "<cmd>BufferMovePrevious<cr>", "Move previous" },
    ["1"] = { "<cmd>BufferGoto 1<cr>", "Goto 1" },
    ["2"] = { "<cmd>BufferGoto 2<cr>", "Goto 2" },
    ["3"] = { "<cmd>BufferGoto 3<cr>", "Goto 3" },
    ["4"] = { "<cmd>BufferGoto 4<cr>", "Goto 4" },
    ["5"] = { "<cmd>BufferGoto 5<cr>", "Goto 5" },
    ["0"] = { "<cmd>BufferLast<cr>", "Goto last" },
    w = {
        name = "Buffer/Window movement",
        v = { ":vert sb ", "Split vertical" },
        s = { ":sbuffer ", "Split horizontal" },
        r = { "<cmd>WinResizerStartResize<cr>", "Resize window" },
        m = { "<cmd>WinShift<cr>", "Winshift mode" },
        h = { "<cmd>WinShift left<cr>", "Move window left" },
        k = { "<cmd>WinShift up<cr>", "Move window up" },
        j = { "<cmd>WinShift down<cr>", "Move window down" },
        l = { "<cmd>WinShift right<cr>", "Move window right" },
        w = {
            name = "Buffers movement in buffline (Does not work!!)",
            ["1"] = {"<cmd>BufferMove 1<cr>", "Move to 1"},
            ["2"] = {"<cmd>BufferMove 2<cr>", "Move to 2"},
            ["3"] = {"<cmd>BufferMove 3<cr>", "Move to 3"},
            ["4"] = {"<cmd>BufferMove 4<cr>", "Move to 4"},
            ["5"] = {"<cmd>BufferMove 5<cr>", "Move to 5"},
        },
    },

    X = { "<cmd>bd! %<cr>", "Delete and close window" },
    x = {
        name = "Buffer delete",
        x = { "<cmd>BufferClose<cr>", "Delete and don't close window" },
        f = { ":bd ", "Delete by searching" },
        o = { "<cmd>BufferCloseAllButCurrent<cr>", "Delete all but current" },
        j = { "<cmd>BufferCloseBuffersLeft<cr>", "Delete buffers left" },
        k = { "<cmd>BufferCloseBuffersRight<cr>", "Delete buffers right" },
        ["*"] = { "<cmd>BufferCloseAllButPinned<cr>", "Delete all but pinned" },
    },

    n = {
        name = "Note taking",
        M = { "<cmd> lua require('nabla').popup()<cr>", "Math popup" },
        e = { "<cmd> lua require('nabla').enable_virt()<cr>", "Enable virtual text" },
        d = { "<cmd> lua require('nabla').disable_virt()<cr>", "Disable virtual text" },
        p = { "<cmd> MarkdownPreview<cr>", "Markdown preview" },
    },

    M = { "<cmd>tab sp<cr>", "Maximise current window" },
    m = {
        name = "Tabs",
        m = { "<cmd>tabnew<cr>", "New tab" },
        c = { "<cmd>tabclose<cr>", "Close tab" },
        o = { "<cmd>tabonly<cr>", "Close all but current" },
        ["1"] = { "<cmd> tabn 1<cr>", "Go to 1"},
        ["2"] = { "<cmd> tabn 2<cr>", "Go to 2"},
        ["3"] = { "<cmd> tabn 3<cr>", "Go to 3"},
        ["4"] = { "<cmd> tabn 4<cr>", "Go to 4"},
        ["5"] = { "<cmd> tabn 5<cr>", "Go to 5"},
    },

    d = {
        -- ignore a,n,p,v - used for diagnostics
        name = "Diagnostics & debug",
        u = { "<cmd>lua require('dapui').toggle()<cr>" ,"DAP UI" },
        r = { "<cmd>lua require('dap').repl.toggle()<cr>" ,"DAP Toggle REPL" },
        t = { "<cmd>DapVirtualTextToggle<cr>", "DAP Virtual text toggle" },
        e = { "<cmd>lua require('dapui').eval()<cr>", "DAP Virtual text toggle" },
        f = { "<cmd>lua require('dapui').float_element()<cr>", "DAP float element" },
        R = { "<cmd>DapVirtualTextForceRefresh<cr>", "DAP Virtual text refresh" },
    }

}, { prefix = "<leader>" })

-- search & replace in visual mode
wk.register({
    name = "Visual replace & clipboard copy",
    r = { ":s/", "Replace Visual" },
}, { prefix = "<leader>", mode = "v" })

-- visual mode maps
wk.register({
    ['<c-s>'] = { '/', 'Incremental search' },
    ['<c-s-s>'] = { '?', 'Backward incremental search' },
    ['s'] = { '<Plug>Lightspeed_omni_s', "Lightspeed" },
    ['<'] = { '<gv', 'Maintain selection after visual indent' },
    ['>'] = { '>gv', 'Maintain selection after visual indent' },
    ["<leader>de"] = { "<cmd>lua require('dapui').eval()<cr>", "DAP eval" }
}, { mode = "v" })

-- normal mode maps
wk.register({
    ['<esc>'] = { ':nohlsearch<cr>', 'Remove search highlighting' },
    ['<c-s>'] = { '/', 'Incremental search' },
    ['<c-s-s>'] = { '?', 'Backward incremental search' },
    ['s'] = { '<Plug>Lightspeed_omni_s', "Lightspeed" },
    ['S'] = { '<Plug>Lightspeed_omni_gs', 'Lightspeed multi buffer' },

    -- wrapped line movement
    k = {'gk', 'Up line'},
    j = {'gj', 'Down line'},
    ['0'] = { 'g0', 'First line char' },
    ['$'] = { 'g$', 'Last line line' },
    Y = { 'y$', "Yank from cursor till end of line" },
})

-- insert mode maps
wk.register({
    ['<c-s>'] = { '<esc>/', 'Incremental search' },
    ['<c-s-s>'] = { '<esc>?', 'Backwarnd incremental search' },
}, { mode = "i" })


wk.register({
    z = { '<Plug>Lightspeed_omni_s', 'Lightspeed in operator pending mode' }
}, { mode = "o" })

-- debug
wk.register({
    name = "Debug",
    ["<F5>"] = { '<cmd>lua require"dap".continue()<cr>','Continue/Start debugger' },
    ["<F6>"] = { '<cmd>lua require"dap".terminate()<cr>', 'Terminate debugger' },
    ["<F8>"] = { '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>', 'Cond breakpoint' },
    ["<F9>"] = { '<cmd>lua require"dap".toggle_breakpoint()<cr>', 'Breakpoint' },
    ["<F10>"] = { '<cmd>lua require"dap".step_over()<cr>', 'Step over' },
    ["<F11>"] = { '<cmd>lua require"dap".step_into()<cr>', 'Step into' },
    ["<F12>"] = { '<cmd>lua require"dap".step_out()<cr>', 'Step out' },
})

-- buffer splitting
wk.register({
    name = "Buffer splitting",
    v = { "<cmd>vert sp % <cr>", "Split buffer vertically"  },
    x = { "<cmd>sbuffer % <cr>", "Split buffer Horizontally"  }
}, { prefix = "<C-w>", mode = "n" })

