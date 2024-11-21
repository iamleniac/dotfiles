return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('lspsaga').setup {
      lightbulb = {
        sign = false,
      },
    }

    vim.keymap.set('n', '[e', '<cmd>Lspsaga diagnostic_jump_prev<CR>')
    vim.keymap.set('n', ']e', '<cmd>Lspsaga diagnostic_jump_next<CR>')
    vim.keymap.set(
      'n',
      '<leader>e',
      '<cmd>Lspsaga show_workspace_diagnostics<CR>'
    )
    vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>')
    vim.keymap.set('n', 'D', '<cmd>:Lspsaga peek_definition<CR>')
    vim.keymap.set('n', 'T', '<cmd>:Lspsaga peek_type_definition<CR>')
    vim.keymap.set('n', 'gd', '<cmd>:Lspsaga goto_definition<CR>')
    vim.keymap.set('n', 'gt', '<cmd>:Lspsaga goto_type_definition<CR>')
    vim.keymap.set('n', '<leader>ca', '<cmd>:Lspsaga code_action<CR>')
    vim.keymap.set('n', '<leader>rn', '<cmd>:Lspsaga rename<CR>')
    vim.keymap.set('n', '<leader>o', '<cmd>:Lspsaga outline<CR>')
  end,
}
