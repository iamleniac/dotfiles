local nnoremap = require("leniac.keymap").nnoremap
local inoremap = require("leniac.keymap").inoremap
local vnoremap = require("leniac.keymap").vnoremap

local builtin = require("telescope.builtin")

nnoremap("<leader>pv", "<cmd>Ex<CR>")

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

-- nvim-tree
nnoremap("<leader>tt", ":NvimTreeToggle<CR>")
nnoremap("<leader>tf", ":NvimTreeFocus<CR>")
nnoremap("<leader>ts", ":NvimTreeFindFile<CR>")
nnoremap("<leader>tc", ":NvimTreeCollapse<CR>")

-- coc
inoremap("<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<CR>"]], {silent = true, expr = true, replace_keycodes = false})
nnoremap("<leader>f", ":CocCommand eslint.executeAutofix<CR>")
vnoremap("<leader>f", ":CocCommand eslint.executeAutofix<CR>")
