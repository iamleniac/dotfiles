return {
  'nvimdev/guard.nvim',
  dependencies = {
    'nvimdev/guard-collection',
  },
  config = function()
    local ft = require 'guard.filetype'

    ft('lua'):lint('luacheck'):fmt 'stylua'
    ft('typescript'):fmt('prettierd'):lint 'eslint_d'
    ft('typescriptreact'):fmt('prettierd'):lint 'eslint_d'
    ft('javascript'):fmt('prettierd'):lint 'eslint_d'
    ft('javascriptreact'):fmt('prettierd'):lint 'eslint_d'

    vim.g.guard_config = {
      fmt_on_save = true,
    }
  end,
}
