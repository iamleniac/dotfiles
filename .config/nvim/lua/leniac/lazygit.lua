local M = {}

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

local function _lazygit_toggle()
  lazygit:toggle()
end

M.toggle = _lazygit_toggle

return M
