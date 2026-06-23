vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
    { src = 'https://github.com/stevearc/oil.nvim' },
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
    { src = 'https://github.com/nvim-mini/mini.nvim' },
    { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('1.*') },
    { src = 'https://github.com/saghen/blink.indent' },
    { src = 'https://github.com/tpope/vim-fugitive' },
    { src = 'https://github.com/lewis6991/gitsigns.nvim' },
    { src = 'https://github.com/mason-org/mason.nvim' },
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
    { src = 'https://github.com/L3MON4D3/LuaSnip' },
})

vim.cmd.packadd('nvim.undotree')

require('nvim-treesitter').setup()
require('oil').setup({
    view_options = { show_hidden = true },
})

require('mini.comment').setup()
require('mini.move').setup()
require('mini.surround').setup()
require('mini.cursorword').setup()
require('mini.icons').setup()
require('mini.trailspace').setup()

require('gitsigns').setup()
require('mason').setup()
require('mason-lspconfig').setup()
require('LuaSnip').setup()

require('blink.cmp').setup({
    keymap = {
        preset = 'default',
    },
    appearance = { nerd_font_variant = 'mono' },
    completion = { documentation = { auto_show = false, auto_show_delay_ms = 500 } },
    snippets = {
        expand = function(snippet) require('luasnip').lsp_extend(snippet) end,
    },
    sources = { default = { 'lsp', 'path', 'snippets' } },
    fuzzy = {
        implementation = 'prefer_rust_with_warning',
        prebuilt_binaries = { download = true }
    },
    signature = { enabled = true },
})

-- themes
vim.pack.add({
    { src = 'https://github.com/folke/tokyonight.nvim' },
})
