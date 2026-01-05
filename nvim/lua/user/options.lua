local opt = vim.opt

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
vim.softtabstop = 4

opt.smartindent = true

opt.wrap = false

opt.number = true
opt.relativenumber = true

opt.wildmode = 'longest:full,full'

opt.title = true
opt.mouse = 'a'

opt.termguicolors = true

opt.spell = true

opt.ignorecase = true
opt.smartcase = true

opt.list = true
opt.listchars = { trail = '·', tab = '>-' }
opt.fillchars:append({ eob = ' '})

opt.splitbelow = true
opt.splitright = true

opt.scrolloff = 8
opt.sidescrolloff = 8

opt.clipboard = 'unnamedplus'
opt.confirm = true

opt.undofile = true
opt.backup = true
opt.backupdir:remove('.')
