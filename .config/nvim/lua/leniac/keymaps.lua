-- move lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- exit terminal on ESC
vim.keymap.set('t', '<esc>', '<C-\\><C-n>', {})

-- split screen
vim.keymap.set('n', '<leader>sv', '<C-w>v', { noremap = true })
vim.keymap.set('n', '<leader>sh', '<C-w>s', { noremap = true })
