local actions = require('telescope.actions')
local center_config = {
    height = 0.9,
    width = 0.8,
    prompt_position = "top",
}

require("telescope").setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--trim',
            },
        mappings = {
            i = {
                ["<c-j>"] = actions.move_selection_next,
                ["<c-k>"] = actions.move_selection_previous,
                ["<c-d>"] = actions.delete_buffer,
                -- ["<S-h>"] = actions.move_to_top,
                -- ["<S-m>"] = actions.move_to_middle,
                -- ["<S-l>"] = actions.move_to_bottom,
                ["<c-l>"] = actions.preview_scrolling_down,
                ["<c-h>"] = actions.preview_scrolling_up,
            },
            n = {
                ["<j>"] = actions.move_selection_next,
                ["<k>"] = actions.move_selection_previous,
                ["<c-d>"] = actions.delete_buffer,
                -- ["<S-h>"] = actions.move_to_top,
                -- ["<S-m>"] = actions.move_to_middle,
                -- ["<S-l>"] = actions.move_to_bottom,
                ["<c-l>"] = actions.preview_scrolling_down,
                ["<c-h>"] = actions.preview_scrolling_up,
            }
        },
        path_display = {'smart'},
        sort_lastused = true,
        sorting_strategy = "ascending",
        layout_strategy = "flex",
        layout_config = {
            flex = {
                flip_columns = 130,
            },
            horizontal = {
                height = 0.9,
                width = 0.8,
                preview_width = 0.55,
            },
            vertical = {
                height = 0.9,
                width = 0.8,
                preview_height = 0.4,
                preview_cutoff = 34 -- cutoff if not full mac screen
            }
        }
    },
    pickers = {
        help_tags = {
            previewer = false,
            layout_strategy = "center",
            layout_config = center_config
        },
        commands = {
            previewer = false,
            layout_strategy = "center",
            layout_config = center_config
        },
        live_grep = {
            theme = "ivy"
        },
        lsp_references = {
            theme = "ivy",
        },
        lsp_workspace_diagnostics = {
            theme = "ivy"
        },
        current_buffer_fuzzy_find = {
            theme = "ivy",
        },
    },
    extensions = {
        ["zf-native"] = {
            file = {
                -- override default telescope file sorter
                enable = true,

                -- highlight matching text in results
                highlight_results = true,

                -- enable zf filename match priority
                match_filename = true,
            },
            -- options for sorting all other items
            generic = {
                -- override default telescope generic item sorter
                enable = true,

                -- highlight matching text in results
                highlight_results = true,

                -- disable zf filename match priority
                match_filename = false,
            },
        },
        ["opener"] = {
            hidden = false, -- do not show hidden directories
            root_dir = "~", -- search from home directory by default
            respect_gitignore = false, -- respect .gitignore files
        },
    }
}

require('telescope').load_extension('fzf')
require('telescope').load_extension('neoclip')
require('telescope').load_extension('file_browser')
require('telescope').load_extension('zf-native')
require('telescope').load_extension('zf-native')
require('telescope').load_extension("opener")
