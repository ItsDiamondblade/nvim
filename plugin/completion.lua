vim.pack.add({
    { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('1.*') },
    { src = 'https://github.com/L3MON4D3/LuaSnip' },
    { src = 'https://github.com/rafamadriz/friendly-snippets' },
    { src = 'https://github.com/folke/lazydev.nvim' },
})

-- Setup lazydev
require("lazydev").setup({
    library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
    },
})

require('luasnip.loaders.from_vscode').lazy_load()

require('blink.cmp').setup({
    keymap = {
        preset = 'super-tab',
    },
    appearance = { nerd_font_variant = 'mono' },
    completion = { documentation = { auto_show = false, auto_show_delay_ms = 500 } },
    snippets = {
        preset = 'luasnip',
        expand = function(snippet)
            require('luasnip').lsp_extend(snippet)
        end,
    },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer', 'lazydev' },
        providers = {
            lazydev = {
                name = "LazyDev",
                module = "lazydev.integrations.blink",
                -- make lazydev completions top priority (see `:h blink.cmp`)
                score_offset = 100,
            }
        },
},
    fuzzy = {
        implementation = 'prefer_rust_with_warning',
        prebuilt_binaries = { download = true }
    },
    signature = { enabled = true },
})
