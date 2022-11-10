require("leniac.set")
require("leniac.remap")
require("leniac.lsp")

require("toggleterm").setup()

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
vim.cmd [[autocmd BufWritePre * lua require('lint').try_lint()]]
vim.cmd [[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll]]
