-- line numbering
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.mouse = 'a'

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.inccommand = "split"

-- split
vim.opt.splitbelow = true
vim.opt.splitright = true

-- persistent undo
local undodir = vim.fn.stdpath("state") .. "/undodir"
vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.undodir = undodir
vim.opt.undofile = true

-- clipboard
vim.opt.clipboard:append("unnamedplus")
vim.opt.isfname:append("@-@")

vim.opt.signcolumn = "yes:2"
