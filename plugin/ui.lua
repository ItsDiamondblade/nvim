vim.pack.add({
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
    { src = 'https://github.com/stevearc/oil.nvim' },
    { src = 'https://github.com/nvim-mini/mini.nvim' },
    { src = 'https://github.com/saghen/blink.indent' },
})

vim.cmd.packadd('nvim.undotree')

require('nvim-treesitter').setup()
require('oil').setup({
    view_options = { show_hidden = true },
    delete_to_trash = true
})


local statusline = require('mini.statusline')
statusline.setup()
statusline.section_location = function()
    return '%2l:%-2v'
end

require('mini.comment').setup()
require('mini.move').setup()
require('mini.surround').setup()
require('mini.cursorword').setup()
require('mini.icons').setup()
require('mini.trailspace').setup()

-- themes
vim.pack.add({
    { src = 'https://github.com/folke/tokyonight.nvim' },
})

vim.cmd.colorscheme('tokyonight-night')
