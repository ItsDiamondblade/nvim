vim.pack.add({
    { src = 'https://github.com/mason-org/mason.nvim' },
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
    { src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim' },
})

require('mason').setup()
require('mason-lspconfig').setup({
    -- Install LSPs
    ensure_installed = {
       'basedpyright',
       'clangd',
       'lua_ls'
    },
})
require('mason-tool-installer').setup({
    -- Install DAPs, linters, and formatters
    ensure_installed = {
        'debugpy',
        'flake8',
        'codelldb',
        'cpplint',
        'luacheck',
    }
})
