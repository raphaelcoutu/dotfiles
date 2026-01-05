vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

--vim.keymap.set('i', ';;', '<Esc>A;')

vim.keymap.set('n', '<Leader>k', ':nohlsearch<CR>')

vim.keymap.set('n', '<A-k>', ':move .-2<CR>==')
vim.keymap.set('n', '<A-j>', ':move .+1<CR>==')

vim.keymap.set('n', '<leader>to', '<cmd>tabnew<CR>')
vim.keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>')
vim.keymap.set('n', '<leader>tn', '<cmd>tabn<CR>')
vim.keymap.set('n', '<leader>tp', '<cmd>tabp<CR>')

