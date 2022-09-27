return require('packer').startup(function(use)
    -- packer
    use {
        'wbthomason/packer.nvim',
    }

    use {
        'ggandor/lightspeed.nvim',
        config = function () require('lightspeed').setup({
            ignore_case = true
        })
        end
    }

    use {
        'jiangmiao/auto-pairs',
        'RRethy/vim-illuminate',
    }
    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }
    use {
        'kylechui/nvim-surround',
        config = function() require("nvim-surround").setup({
                move_cursor = false
            })
        end
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function() require('plugins.indent-blankline') end
    }

    -- EVERYTHING BELOW IS ONLY FOR NEOVIM --
    -- smooth scroll
    if (vim.fn.has("nvim") == 1) then
        use {
            'declancm/cinnamon.nvim',
            config = function() require('cinnamon').setup({
                extra_keymaps = true,
                override_keymaps = true,
                extendend_keymaps = true,
            }) end
        }

        use {
            'mg979/vim-visual-multi',
            branch = 'master',
        }

        use {
            "catppuccin/nvim",
            'EdenEast/nightfox.nvim',
            'monsonjeremy/onedark.nvim',
            'folke/tokyonight.nvim',
            "sainnhe/everforest"
        }

        use {
            "folke/which-key.nvim",
            config = function() require('plugins.which-key') end,
        }

        use {
            'nvim-zh/auto-save.nvim',
            config = function() require("auto-save").setup() end,
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
        use {
            'p00f/nvim-ts-rainbow'
        }

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

        -- neotree
        use {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v2.x",
            requires = {
                "nvim-lua/plenary.nvim",
                "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
                "MunifTanjim/nui.nvim",
                "s1n7ax/nvim-window-picker"
            },
            config = function()
                require('plugins.neotree')
                require('window-picker').setup()
            end,
        }

        -- lualine
        use {
            'nvim-lualine/lualine.nvim',
            config = function() require('plugins.lualine') end,
            requires =  'kyazdani42/nvim-web-devicons'
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
        use { "simeji/winresizer" }

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

        -- search
        use {
            'kevinhwang91/nvim-hlslens',
        }
        use {
            'kevinhwang91/nvim-bqf',
            'junegunn/fzf',
            "gabrielpoca/replacer.nvim",
            ft = 'qf',
            run = function() vim.fn['fzf#install']() end
        }

        -- outline
        use {
            'simrat39/symbols-outline.nvim',
            config = function() require("symbols-outline").setup() end
        }

        -- debug
        use {
            "folke/todo-comments.nvim",
            requires = "nvim-lua/plenary.nvim",
            config = function() require("todo-comments").setup() end,
        }
        use {
            "mfussenegger/nvim-dap",
            requires = {
                "mfussenegger/nvim-dap-python",
                "rcarriga/nvim-dap-ui",
                "theHamsta/nvim-dap-virtual-text",
                "rcarriga/cmp-dap",
            },
            config = function() require("plugins.debugger") end
        }

        -- note taking
        use {
            'jakewvincent/mkdnflow.nvim',
            rocks = 'luautf8', -- Ensures optional luautf8 dependency is installed
            config = function() require('plugins.mkdnflow') end
        }
        use {
            "iamcco/markdown-preview.nvim",
            run = function() vim.fn["mkdp#util#install"]() end,
        }
        use {
            'jbyuki/nabla.nvim',
            config = function() require('nabla').enable_virt() end
        }
        use {
            "loqusion/true-zen.nvim",
            config = function() require("true-zen").setup() end
        }
        use {
            "michaelb/sniprun",
            run = 'bash ./install.sh'
        }

        -- misc
        use { 'dstein64/vim-startuptime' }
    end
end)
