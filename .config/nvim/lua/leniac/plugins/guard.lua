return {
  'nvimdev/guard.nvim',
  dependencies = {
    'nvimdev/guard-collection',
  },
  config = function()
    local ft = require 'guard.filetype'

    local prettierd = {
      cmd = 'prettierd',
      args = { vim.api.nvim_buf_get_name(0) },
      stdin = true,
    }

    local eslint_d = {
      cmd = 'eslint_d',
      args = { vim.api.nvim_buf_get_name(0) },
      stdin = true,
    }

    ft('lua'):lint('luacheck'):fmt 'stylua'
    ft('typescript,typescriptreact,javascript,javascriptreact')
      :fmt('lsp')
      :append(prettierd)
      :lint(eslint_d)

    vim.g.guard_config = {
      fmt_on_save = true,
    }
  end,
}
