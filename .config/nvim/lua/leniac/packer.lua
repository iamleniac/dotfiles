-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- LSP config
  use 'neovim/nvim-lspconfig'
  use 'folke/lsp-colors.nvim'
  -- LSP Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'onsails/lspkind.nvim'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  -- Linter
  use 'mfussenegger/nvim-lint'
  -- Trouble
  use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
      end
      }
  -- ColorScheme
  use 'folke/tokyonight.nvim'
  use {
      'ThePrimeagen/harpoon',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
      'akinsho/toggleterm.nvim', tag = '*' 
  }
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  end)
