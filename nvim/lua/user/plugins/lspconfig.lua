return {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup({ automatic_installation = true })

        vim.lsp.config('intelephense', {})
        vim.lsp.config('phpactor', {})

        vim.lsp.config('lspconfig', {
            filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
        })

        vim.lsp.config('tailwindcss', {})

        -- Keymaps
        vim.keymap.set('n', '<Leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
        vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>')
        vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>')
        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
        vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')

        vim.diagnostic.config({
            virtual_text = false,
            float = {
                source = true
            }
        })
    end,
}
