vim.g.mapleader = ' '

-- File tree
vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>', { desc = 'Open Oil file explorer'})

-- Undotree
vim.keymap.set('n', '<leader>u', ':Undotree<CR>', { desc = 'Open undotree' })

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Git

