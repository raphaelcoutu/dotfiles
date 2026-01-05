local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "bluz71/vim-nightfly-colors",
        name = "nightfly",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme nightfly]])
        end,
    },
    { "tpope/vim-repeat" },
    { "tpope/vim-commentary" },
    { "tpope/vim-surround" },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    {
        "karb94/neoscroll.nvim",
        config = function ()
            require("neoscroll").setup {}
        end
    },
    {
        "nvim-telescope/telescope.nvim", tag = '0.1.5',
        dependencies = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "nvim-telescope/telescope-live-grep-args.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc= "Find Files"})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Find with Grep"})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Find in Buffer"})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Help tags"})
        end
    },
    { 
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                'php'
            }
        }
    },
    { import = "user.plugins.lspconfig" },
    { import = "user.plugins.phpactor" },
    {
        "Wansmer/treesj",
        dependencies = {'nvim-treesitter/nvim-treesitter'},
        keys = {

        }
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    {
        "folke/snacks.nvim",
        opts= {
            picker = {
                enabled = true
            }
        }
    },
    {
        'saghen/blink.cmp',
        dependencies = {'rafamadriz/friendly-snippets'},
        version = '1.*',

        --@module 'blink.cmp'
        --@type blink.cmp.Config
        opts = {
            keymap = {preset='default'},
            apperance = {nerd_font_variant = 'mono'},
            completion = {documentation = {auto_show=false} },
            sources = {
                default = {'lsp', 'path', 'snippets', 'buffer'}
            }
        }
    }
})
