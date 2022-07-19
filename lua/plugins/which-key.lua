local wk = require("which-key")

wk.register({
    ["."] = { ":lcd %:p:h<cr>:pwd<cr>", "Change to current dir" },
    q = { "<cmd>q<cr>", "Close" },
    Q = { "<cmd>qa<cr>", "Close all" },
    k = { "<cmd>WhichKey<cr>", "Keys" },
    [";"] = { "<cmd>Telescope commands<cr>", "Commands" },
    ["?"] = { "<cmd>Telescope help_tags<cr>", "Help" },
    ["<leader>"] = {
        name = "Word wrap",
        w = { "<cmd>set wrap!<cr>", "Word wrap" },
    },

    -- file and buffer movement
    f = { "<cmd>Telescope find_files<cr>", "Find files" },
    F = { "<cmd>Telescope file_browser<cr>", "File browser" },
    s = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Search current buffer" },
    S = { "<cmd>Telescope live_grep<cr>", "Search in workspace" },
    l = { "<cmd>Telescope buffers<cr>", "Buffers" },
    j = { "<cmd>Telescope jumplist<cr>", "Jumplist" },

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
    r = {
        name = "Replace",
        r = { ":%s/", "Buffer Replace" },
        l = { ":s/", "Line Replace" },
    },

    -- code navigation
    c = {
        name = "Code",
        r = { "<cmd>Telescope lsp_references<cr>", "References" },
        d = { "<cmd>Telescope lsp_definitions<cr>", "Definitions" },
        p = { "<cmd>TroubleToggle<cr>", "Problems" },
        s = { "<cmd>Telescope lsp_document_symbols<cr>", "Symbols" },
        S = { "<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols" },
        o = { "<cmd>SymbolsOutline<cr>", 'Outline' },
    },

    n = {
        name = "File browser",
        n = { "<cmd>NvimTreeToggle<cr>", "Toggle"},
        r = { "<cmd>NvimTreeRefresh<cr>", "Refresh"},
        f = { "<cmd>NvimTreeFindFile<cr>", "Find file"},
    },

    G = { "<cmd>Neogit<cr>", "Git" },
    g = {
        name = "Git",
        n = { "<cmd>Gitsigns next_hunk<cr>", "Next hunk" },
        p = { "<cmd>Gitsigns prev_hunk<cr>", "Previous hunk" },
        v = { "<cmd>Gitsigns preview_hunk<cr>", "Preview hunk" },

        s = { "<cmd>Gitsigns stage_hunk<cr>", "Stage hunk" },
        u = { "<cmd>Gitsigns undo_stage_hunk<cr>", "Unstage hunk" },
        r = { "<cmd>Gitsigns reset_hunk<cr>", "Reset hunk" },
        b = { "<cmd>GitBlameToggle<cr>", "Blame Toggle" },
    },

    e = {
        name = "Files",
        e = { ":e ", "Open file" },
        f = { "<cmd>w<cr>", "Save current file" },
        c = { "<cmd>lua OpenRC()<cr>", "Open config" },
        v = { ":vert sp ", "Split vertical" },
        x = { ":sp ", "Split horizontal" },
    },

    W = { "<cmd>BufferPick<cr>", "Pick buffer" },
    w = {
        name = "Buffer/Window movement",
        n = { "<cmd>BufferNext<cr>", "Next" },
        p = { "<cmd>BufferPrevious<cr>", "Previous" },
        v = { ":vert sb ", "Split vertical" },
        x = { ":sbuffer ", "Split horizontal" },
        o = { "<cmd>only<cr>", "Close other" },
        s = { "<cmd>lua require('nvim-window').pick()<cr>", "Select window" },
        r = { "<cmd>WinResizerStartResize<cr>", "Resize window" },
        ["*"] = { "<cmd>BufferPin<cr>", "Pin" },
        ["]"] = { "<cmd>BufferMoveNext<cr>", "Move next" },
        ["["] = { "<cmd>BufferMovePrevious<cr>", "Move previous" },
        ["1"] = { "<cmd>BufferGoto 1<cr>", "Goto 1" },
        ["2"] = { "<cmd>BufferGoto 2<cr>", "Goto 2" },
        ["3"] = { "<cmd>BufferGoto 3<cr>", "Goto 3" },
        ["4"] = { "<cmd>BufferGoto 4<cr>", "Goto 4" },
        ["5"] = { "<cmd>BufferGoto 5<cr>", "Goto 5" },
        ["0"] = { "<cmd>BufferLast<cr>", "Goto last" },
        m = { "<cmd>WinShift<cr>", "Winshift mode" },
        h = { "<cmd>WinShift left<cr>", "Move window left" },
        k = { "<cmd>WinShift up<cr>", "Move window up" },
        j = { "<cmd>WinShift down<cr>", "Move window down" },
        l = { "<cmd>WinShift right<cr>", "Move window right" },
        b = {
            name = "Buffers movement in buffline (Does not work!!)",
            b = {":BufferMove ", "Move mode"},
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
        h = { "<cmd>BufferCloseBuffersLeft<cr>", "Delete buffers left" },
        l = { "<cmd>BufferCloseBuffersRight<cr>", "Delete buffers right" },
        ["*"] = { "<cmd>BufferCloseAllButPinned<cr>", "Delete all but pinned" },
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

    -- this is set in lsp settings
    d = { name = "Diagnostics" }

}, { prefix = "<leader>" })

wk.register({
    name = "Visual replace & clipboard copy",
    r = { ":s/", "Replace Visual" },
    y = { '\"+y', "Copy selection to Clipboard" },
}, { prefix = "<leader>", mode = "v"  })

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

wk.setup()

