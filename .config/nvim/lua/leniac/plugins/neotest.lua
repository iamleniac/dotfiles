return {
    'nvim-neotest/neotest',
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        'nvim-neotest/neotest-go',
    },
    event = { 'BufEnter *_test.go' },
    config = function()
        local neotest = require('neotest')

        neotest.setup({
            adapters = {
                require('neotest-go')
            }
        })

        local function run_nearest()
            neotest.run.run({ extra_args = { "-count=1" } })
            neotest.output_panel.open()
        end

        local function run_file()
            neotest.run.run(vim.fn.expand("%"))
            neotest.output_panel.open()
        end

        local function toggle_output()
            neotest.output_panel.toggle()
        end

        vim.keymap.set('n', '<leader>t', run_nearest, { noremap = true })
        vim.keymap.set('n', '<leader>tf', run_file, { noremap = true })
        vim.keymap.set('n', '<leader>tr', toggle_output, { noremap = true })
    end
}
