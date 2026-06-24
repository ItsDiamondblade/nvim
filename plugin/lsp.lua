vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
})

vim.lsp.config('*', {
    capabilities = require('blink.cmp').get_lsp_capabilities(),
})

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = { version = 'LuaJIT' },
            diagnostics = {
                globals = {
                    'vim',
                    'require',
                },
            },
            workspace = {
                checkThirdParty = false,
                -- library = { vim.env.VIMRUNTIME },
            },
            telemetry = { enable = false },
        },
    },
})

-- vim.lsp.enable({
--     'basedpyright',
--     'clangd',
--     'lua_ls',
-- })

require('mason-lspconfig').setup({
    automatic_enable = true,
})

vim.diagnostic.config({
    virtual_text = { prefix = '●', spacing = 2 },
    text = {
        [vim.diagnostic.severity.ERROR] = 'E',
        [vim.diagnostic.severity.WARN] = 'W',
        [vim.diagnostic.severity.INFO] = 'I',
        [vim.diagnostic.severity.HINT] = 'H',
    },
    underline = true,
    severity_sort = true,
    float = {
        border = 'rounded',
        source = true,
    },
})
