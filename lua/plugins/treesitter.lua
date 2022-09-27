require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "python",
        "lua",
        "bash",
        "rust",
        "go",
        "dockerfile",
        "json",
        "toml",
        "yaml",
        "markdown",
        "markdown_inline",
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "markdown", },
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<CR>',
            node_incremental = '<CR>',
            scope_incremental = '<TAB>',
            node_decremental = '<S-Tab>',
        },
    },
    indent = {
        enable = false,
    },
    rainbow = {
        enable = true,
        extended_mode = true
    },
}
