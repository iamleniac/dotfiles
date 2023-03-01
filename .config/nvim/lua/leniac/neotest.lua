local neotest = require("neotest")

neotest.setup({
    adapters = {
        require("neotest-go"),
    },
})

local M = {}

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

M.run_nearest = run_nearest
M.run_file = run_file
M.toggle_output = toggle_output

return M
