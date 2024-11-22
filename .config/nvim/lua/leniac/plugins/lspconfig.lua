return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
    'nvimtools/none-ls.nvim',
    'j-hui/fidget.nvim',
    'folke/neodev.nvim',
    'hrsh7th/cmp-nvim-lsp',
    -- 'creativenull/efmls-configs-nvim',
    -- 'lukas-reineke/lsp-format.nvim',
  },
  config = function()
    -- require('lsp-format').setup {}
    -- Globals
    local lspconfig = require 'lspconfig'

    local servers = {
      lua_ls = {
        settings = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enabled = true },
          },
        },
      },
      ts_ls = {},
      gopls = {},
    }

    -- local on_attach = function(client, buffnr)
    --   require('lsp-format').on_attach(client, buffnr)
    -- end

    -- Setup neovim lua configuration
    require('neodev').setup {}

    -- Setup code completion capabilities
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

    -- Setup Mason
    local mason_lspconfig = require 'mason-lspconfig'

    mason_lspconfig.setup {
      ensure_installed = vim.tbl_keys(servers),
    }

    mason_lspconfig.setup_handlers {
      function(server_name)
        lspconfig[server_name].setup {
          capabilities = capabilities,
          settings = (servers[server_name] or {}).settings,
          filetypes = (servers[server_name] or {}).filetypes,
        }
      end,
    }
  end,
}
