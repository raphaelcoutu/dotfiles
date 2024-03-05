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

require('lazy').setup({
    {
        "/bluz71/vim-nightfly-colors",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme nightfly]])
        end,
    },
    { "tpope/vim-commentary" },
    { "tpope/vim-surround" },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    {
        "karb94/neoscroll.nvim",
        config = function ()
            require('neoscroll').setup {}
        end
    },
    { "AndrewRadev/splitjoin.vim" },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'nvim-telescope/telescope-live-grep-args.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
    },
    {'nvim-treesitter/nvim-treesitter'}
})
