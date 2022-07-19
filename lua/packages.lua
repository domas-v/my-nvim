return require('packer').startup(function(use)
    -- packer itself
    use {
        'wbthomason/packer.nvim',
        opt=true,
    }
    use {
        'ggandor/lightspeed.nvim',
        config = function () require('lightspeed').setup({
            ignore_case = true
        })
        end
    }

    -- colorschemes
    use {
        "catppuccin/nvim",
        "EdenEast/nightfox.nvim"
    }

    -- sanity
    use {
        'machakann/vim-sandwich',
        'jiangmiao/auto-pairs',
        'rhysd/accelerated-jk',
        'RRethy/vim-illuminate',
    }
    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }
    use {
        'gbprod/cutlass.nvim',
        config = function() require('cutlass').setup({
            cut_key = 'x',
            exclude = { 'ns', 'nS' }
        })
        end
    }

    -- everything below is only for neovim
    use {
        "folke/which-key.nvim",
        config = function() require('plugins.which-key') end,
    }

    -- autosave
    use {
        'Pocco81/AutoSave.nvim',
        config = function() require('plugins.autosave') end,
    }

    -- lsp
    use {
        'neovim/nvim-lspconfig',
        config = function() require('plugins.lsp_settings') end
    }
    use { "jose-elias-alvarez/null-ls.nvim" }

    -- completion
    use {
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip',
            'hrsh7th/cmp-nvim-lsp-signature-help',
            'hrsh7th/cmp-cmdline',
            'onsails/lspkind-nvim',
            'ray-x/cmp-treesitter',
            'github/copilot.vim',
            -- 'saadparwaiz1/cmp_luasnip',
        }

    -- problems
    use {
        "folke/trouble.nvim",
        cmd = 'TroubleToggle',
        config = function() require("trouble").setup() end,
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function() require("plugins.treesitter") end,
        opt = false,
        run = ':TSUpdateSync',
    }
    use 'p00f/nvim-ts-rainbow'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        config = function() require('plugins.telescope') end,
        requires = 'nvim-lua/plenary.nvim'
    }
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }
    use {
        "AckslD/nvim-neoclip.lua",
        config = function() require('plugins.neoclip') end,
    }
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        "natecraddock/telescope-zf-native.nvim"
    }

    -- tree
    use {
        'kyazdani42/nvim-tree.lua',
        cmd = { 'NvimTreeToggle', 'NvimTreeFindFile' },
        config = function() require('plugins.tree') end,
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
       'karb94/neoscroll.nvim',
       config = function() require('plugins.neoscroll') end
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function() require('plugins.indent-blankline') end
    }
    use {
        'mg979/vim-visual-multi',
        branch = 'master',
    }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        config = function() require('plugins.lualine') end,
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- tabs/buffers/windows
    use {
        'romgrk/barbar.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
        'https://gitlab.com/yorickpeterse/nvim-window.git',
        config = function() require('plugins.nvim-window') end
    }
    use {
        'sindrets/winshift.nvim',
        config = function() require("winshift").setup() end
    }
    use {
        "simeji/winresizer"
    }

    -- symbols outline
    use {
        "simrat39/symbols-outline.nvim"
    }

    -- git
    use {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end,
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use {
        'TimUntersberger/neogit',
        cmd = 'Neogit',
        config = function() require('plugins.neogit') end,
        requires='nvim-lua/plenary.nvim',
    }
    use {
        'f-person/git-blame.nvim',
        config = function() vim.g['gitblame_enabled'] = 0 end,
    }

    -- terminal
    use {
        'akinsho/toggleterm.nvim',
        cmd = 'ToggleTerm',
        config = function() require('plugins.toggleterm') end
    }

    -- debug
    -- use {
    --     "mfussenegger/nvim-dap",
    --     config = function() require('plugins.debugger') end
    -- }
    -- use {
    --     'mfussenegger/nvim-dap-python',
    --     "rcarriga/nvim-dap-ui",
    --     'theHamsta/nvim-dap-virtual-text',
    -- }

    -- misc
    use {
        'dstein64/vim-startuptime',
    }
end)
