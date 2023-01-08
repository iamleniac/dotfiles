vim.opt.background = "dark"

require("tokyonight").setup({
    on_colors = function(colors)
        colors.fg_gutter = colors.orange
    end,
})

vim.cmd("colorscheme tokyonight")
