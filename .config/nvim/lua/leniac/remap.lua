local nnoremap = require("leniac.keymap").nnoremap
local inoremap = require("leniac.keymap").inoremap
local vnoremap = require("leniac.keymap").vnoremap
local tnoremap = require("leniac.keymap").tnoremap
local neotest = require("leniac.neotest")
local lazygit = require("leniac.lazygit")

local ui = require("harpoon.ui")
local mark = require("harpoon.mark")

local builtin = require("telescope.builtin")


-- netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- move
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- J stay in place
nnoremap("J", "mzJ`z")

-- avoid jumping C-z and C-u
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- avoid jumping search
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

-- yank to clipboard: asbjornHaland
nnoremap("<leader>y", [["+y]])
vnoremap("<leader>y", [["+y]])
nnoremap("<leader>Y", [["+Y]])

-- prevent Q
nnoremap("Q", "<nop>")

-- quick replace
nnoremap("<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- exit erminal on ESC
tnoremap("<Esc>", "<C-\\><C-n>")

-- toggleterm
nnoremap("<C-t>", ":ToggleTerm<CR>")
inoremap("<C-t>", ":ToggleTerm<CR>")
nnoremap("<leader>g", lazygit.toggle)

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
-- nnoremap("<leader>hm", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>")
nnoremap("<leader>hm", ui.toggle_quick_menu)
nnoremap("<leader>hh", mark.add_file)
nnoremap("<leader>h1", function() ui.nav_file(1) end)
nnoremap("<leader>h2", function() ui.nav_file(2) end)
nnoremap("<leader>h3", function() ui.nav_file(3) end)
nnoremap("<leader>h4", function() ui.nav_file(4) end)
nnoremap("<leader>he", ui.nav_next)
nnoremap("<leader>hq", ui.nav_prev)

-- neotest
nnoremap("<leader>t", neotest.run_nearest)
nnoremap("<leader>tf", neotest.run_file)
nnoremap("<leader>tr", neotest.toggle_output)
