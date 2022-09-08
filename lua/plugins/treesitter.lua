require('nvim-treesitter.configs').setup {
    -- ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
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
        "markdown_inline"
    },
    highlight = {
        enable = true,
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
    additional_vim_regex_highlighting = true,
}
