vim.pack.add({
    { src = 'https://github.com/mfussenegger/nvim-lint' },
    { src = 'https://github.com/rshkarin/mason-nvim-lint' },
})

require('mason-nvim-lint').setup()
local lint = require('lint')

lint.linters.luacheck.args = {
    '--globals', 'vim',
    '--'
}

lint.linters_by_ft = {
    python = { 'flake8' },
    lua = { 'luacheck' },
    cpp = { 'cpplint' },
}

local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
    group = lint_augroup,
    callback = function()
        lint.try_lint()
    end,
})

vim.keymap.set("n", "<leader>l", function()
		lint.try_lint()
	end, { desc = "Trigger linting for current file" })
