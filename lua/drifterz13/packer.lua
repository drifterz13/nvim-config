-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
	  'folke/tokyonight.nvim',
    as = 'tokyonight',
	  priority = 1000,
	  opts = {},
	  config = function()
		  vim.cmd[[colorscheme tokyonight]]
	  end

  })

  use { 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} }

  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('VonHeikemen/lsp-zero.nvim', {branch = 'v4.x'})
  use('neovim/nvim-lspconfig')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/nvim-cmp')

  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end,
  })
end)
