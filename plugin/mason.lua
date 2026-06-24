vim.pack.add({
    { src = 'https://github.com/mason-org/mason.nvim' },
    { src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim' },
})

require('mason').setup()
require('mason-tool-installer').setup({
    -- Install DAPs, linters, and formatters
    ensure_installed = {
        'basedpyright', -- Python LSP
        'debugpy',      -- Python DAP
        'flake8',       -- Python linter
        'clangd',       -- C++ LSP
        'codelldb',     -- C++ DAP
        'cpplint',      -- C++ linter
        'lua_ls',       -- lua LSP
        'luacheck',     -- lua linter
    }
})
