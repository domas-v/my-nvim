local o  = vim.o  -- global options
local wo = vim.wo -- window local options

local cmd = vim.cmd -- vim commands
local g = vim.g -- vim variables, like g:variable = something

cmd [[syntax enable]]
cmd [[filetype plugin indent on]]
cmd [[set hidden]]
cmd [[set clipboard+=unnamedplus]]
cmd [[set signcolumn=yes:1]]

-- providers
vim.g["python3_host_prog"] = "~/.venv/bin/python3"
vim.g["loaded_ruby_provider"] = 0
vim.g["loaded_perl_provider"] = 0

-- colors
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup({
    dim_inactive = {
		enabled = true,
		shade = "dark",
		percentage = 0.30,
	},
	transparent_background = true,
	term_colors = false,
	compile = {
		enabled = false,
		path = vim.fn.stdpath "cache" .. "/catppuccin",
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = { "italic" },
		keywords = { "bold" },
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		treesitter = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
		coc_nvim = false,
		lsp_trouble = true,
		cmp = true,
		lsp_saga = false,
		gitgutter = true,
		gitsigns = true,
		leap = false,
		telescope = true,
		nvimtree = {
			enabled = false,
			show_root = true,
			transparent_panel = false,
		},
		neotree = {
			enabled = true,
			show_root = true,
			transparent_panel = false,
		},
		dap = {
			enabled = false,
			enable_ui = false,
		},
		which_key = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
		},
		dashboard = false,
		neogit = true,
		vim_sneak = false,
		fern = false,
		barbar = true,
		bufferline = true,
		markdown = true,
		lightspeed = true,
		ts_rainbow = true,
		hop = false,
		notify = false,
		telekasten = false,
		symbols_outline = false,
		mini = false,
		aerial = false,
		vimwiki = false,
		beacon = false,
	},
	color_overrides = {},
	highlight_overrides = {},
})
vim.cmd [[colorscheme catppuccin]]

-- require('nightfox').setup({
--     options = {
--         styles = {
--           comments = "italic",
--           keywords = "bold",
--           types = "italic,bold",
--           functions = "italic",
--         }
--     }
-- })
--
-- cmd [[colorscheme nightfox]]

-- tabs and spaces
o.tabstop = 4
o.expandtab = true
o.shiftwidth = 4
o.softtabstop = 4
o.swapfile = false

-- line numbers
wo.linebreak = true
o.number = true

-- random stuff
o.mouse = "a"
o.completeopt = "menuone,noselect"
o.writebackup = false
o.cmdheight = 1
o.shortmess= o.shortmess .. 'c'
o.showmatch = true  -- show bracket macthing
o.updatetime = 100
o.timeoutlen = 600
o.lazyredraw = true
o.foldlevelstart = 2
o.hidden = true
o.splitbelow = true
o.splitright = true
o.shiftround = true
o.wrap = false

-- neovide settings
-- cmd [[set guifont=JetBrains\ Mono:h10]]
-- g['neovide_fullscreen'] = false

-- bufferline
g.bufferline = {
    icon_pinned = '車',
    insert_at_end = true,
    icons = 'both'
}
