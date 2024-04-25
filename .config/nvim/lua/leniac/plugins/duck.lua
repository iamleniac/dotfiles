return {
    'tamton-aquib/duck.nvim',
    config = function()
        vim.keymap.set('n', '<leader>dh', function() require("duck").hatch("🐈") end, {})
        vim.keymap.set('n', '<leader>dc', function() require("duck").cook() end, {})
    end
}
