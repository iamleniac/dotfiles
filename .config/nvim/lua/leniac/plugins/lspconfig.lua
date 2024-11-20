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

    -- lspconfig.efm.setup({
    -- 	init_options = { documentFormatting = true, documentRangeFormatting = true },
    -- 	on_attach = require("lsp-format").on_attach,
    -- 	capabilities = capabilities,
    -- 	settings = {
    -- 		rootMarkers = { ".git/", "package.json", "Makefile", ".stylua.toml" },
    --
    -- 		languages = {
    -- 			typescript = {
    -- 				require("efmls-configs.linters.eslint_d"),
    -- 				require("efmls-configs.formatters.prettier_d"),
    -- 			},
    -- 			typescriptreact = {
    -- 				require("efmls-configs.linters.eslint_d"),
    -- 				require("efmls-configs.formatters.prettier_d"),
    -- 			},
    -- 			javascript = {
    -- 				require("efmls-configs.linters.eslint_d"),
    -- 				require("efmls-configs.formatters.prettier_d"),
    -- 			},
    -- 			javascriptreact = {
    -- 				require("efmls-configs.linters.eslint_d"),
    -- 				require("efmls-configs.formatters.prettier_d"),
    -- 			},
    -- 			lua = {
    -- 				require("efmls-configs.linters.luacheck"),
    -- 				require("efmls-configs.formatters.stylua"),
    -- 			},
    -- 		},
    -- 	},
    -- })
  end,
}
