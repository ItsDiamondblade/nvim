vim.pack.add({
    { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('1.*') },
})

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
    sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
    fuzzy = {
        implementation = 'prefer_rust_with_warning',
        prebuilt_binaries = { download = true }
    },
    signature = { enabled = true },
})
