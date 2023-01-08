local nnoremap = require("leniac.keymap").nnoremap
local inoremap = require("leniac.keymap").inoremap
local tnoremap = require("leniac.keymap").tnoremap

local builtin = require("telescope.builtin")

-- netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- exit erminal on ESC
tnoremap("<Esc>", "<C-\\><C-n>")

-- toggleterm
nnoremap("<C-t>", ":ToggleTerm<CR>")
inoremap("<C-t>", ":ToggleTerm<CR>")
nnoremap("<leader>g", ":lua require(\"leniac.lazygit\").toggle()<CR>")

-- trouble
nnoremap("<leader>xx", "<cmd>TroubleToggle<cr>")
nnoremap("<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>")
nnoremap("<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>")
nnoremap("<leader>xl", "<cmd>TroubleToggle loclist<cr>")
nnoremap("<leader>xq", "<cmd>TroubleToggle quickfix<cr>")
nnoremap("gR", "<cmd>TroubleToggle lsp_references<cr>")

-- split screen
nnoremap('<leader>sv', '<C-w>v')
nnoremap('<leader>sh', '<C-w>s') 
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- telescope
nnoremap("<leader>ff", builtin.find_files)
nnoremap("<leader>fg", builtin.live_grep)
nnoremap("<leader>fb", builtin.buffers)
nnoremap("<leader>fh", builtin.help_tags)

-- harpoon
nnoremap("<leader>hm", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>")
nnoremap("<leader>hh", ":lua require(\"harpoon.mark\").add_file()<CR>")
nnoremap("<leader>h1", ":lua require(\"harpoon.ui\").nav_file(1)<CR>")
nnoremap("<leader>h2", ":lua require(\"harpoon.ui\").nav_file(2)<CR>")
nnoremap("<leader>h3", ":lua require(\"harpoon.ui\").nav_file(3)<CR>")
nnoremap("<leader>h4", ":lua require(\"harpoon.ui\").nav_file(4)<CR>")
nnoremap("<leader>he", ":lua require(\"harpoon.ui\").nav_next()<CR>")
nnoremap("<leader>hq", ":lua require(\"harpoon.ui\").nav_prev()<CR>")

