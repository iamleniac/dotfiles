require("leniac.set")
require("leniac.remap")
require("leniac.leap")

require("toggleterm").setup()

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
