vim.pack.add({
    { src = 'https://github.com/mfussenegger/nvim-dap' },
    { src = 'https://github.com/jay-babu/mason-nvim-dap.nvim' },
    { src = 'https://github.com/igorlfs/nvim-dap-view' },
})

require('dap')
require('mason-nvim-dap').setup({
    automatic_installation = true,
    handlers = {},
})
require('dap-view').setup()

local dap = require('dap')
local dapview = require('dap-view')

-- Keymaps
vim.keymap.set('n', '<F5>', function() dap.continue() end, { desc = 'Debug: Continue' })
vim.keymap.set('n', '<F6>', function() dap.terminate() dapview.close() end, { desc = 'Debug: Terminate' })
vim.keymap.set('n', '<F9>', function() dap.toggle_breakpoint() end, { desc = 'Debug: Toggle Breakpoint' })
vim.keymap.set('n', '<F10>', function() dap.step_over() end, { desc = 'Debug: Step Over' })
vim.keymap.set('n', '<F11>', function() dap.step_into() end, { desc = 'Debug: Step Into' })

-- C++ config
dap.configurations.cpp = {
    {
        name = '(lldb) Launch',
        type = 'codelldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        stopAtEntry = false,
        cwd = '${workspaceFolder}',
        externalConsole = false,
    }
}

-- Open nvim-dap-view when DAP starts
dap.listeners.before.attach.dapui_config = function()
    dapview.open()
end
dap.listeners.before.launch.dapui_config = function()
    dapview.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapview.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapview.close()
end
