vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

--vim.keymap.set('i', ';;', '<Esc>A;')

vim.keymap.set('n', '<Leader>k', ':nohlsearch<CR>')

vim.keymap.set('n', '<A-k>', ':move .-2<CR>==')
vim.keymap.set('n', '<A-j>', ':move .+1<CR>==')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
