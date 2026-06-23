vim.g.mapleader = ' '

-- File tree
vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>', { desc = 'Open Oil file explorer'})
-- vim.keymap.set('n', '<leader>ev', '<cmd>:vert Oil<CR>', { desc = 'Open Oil file explorer to the right'})
-- vim.keymap.set('n', '<leader>eh', '<cmd>:hor Oil<CR>', { desc = 'Open Oil file explorer below'})

-- Undotree
vim.keymap.set('n', '<leader>u', ':Undotree<CR>', { desc = 'Open undotree' })

-- Telescope
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- LSP
vim.keymap.set('n', 'gl', vim.diagnostic.open_float)

-- Open Terminal
vim.keymap.set('n', '<leader>t', ':split | resize 20 | term<CR>I', { desc = 'Open Terminal' })
vim.keymap.set('t', '<Esc>', '<C-\\><C-N>', { desc = 'Close Terminal with <Esc>' })
