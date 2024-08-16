-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use({
    "folke/tokyonight.nvim",
    as = "tokyonight",
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  })

  use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } })
  use({
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  })
  use("ThePrimeagen/harpoon")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("tpope/vim-commentary")
  use("VonHeikemen/lsp-zero.nvim", { branch = "v4.x" })
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/nvim-cmp")

  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end,
  })
  use({
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }
  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
end)
