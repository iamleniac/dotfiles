require("leniac.set")
require("leniac.remap")

require("toggleterm").setup()

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
