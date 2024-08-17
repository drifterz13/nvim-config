-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("drifterz13.remap")
require("drifterz13.set")

-- Load lazy.nvim
require("lazy").setup({
  -- Packer managed itself
  { "wbthomason/packer.nvim" },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- TokyoNight Colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- Autotag
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- Harpoon
  { "ThePrimeagen/harpoon" },

  -- Undotree
  { "mbbill/undotree" },

  -- Vim Fugitive
  { "tpope/vim-fugitive" },

  -- Vim Commentary
  { "tpope/vim-commentary", after = "nvim-treesitter/nvim-treesitter"  },

  -- LSP Zero
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v4.x",
  },

  -- LSP Config
  { "neovim/nvim-lspconfig" },

  -- nvim-cmp and cmp-nvim-lsp
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/nvim-cmp" },

  -- Mason and Mason-LSPConfig
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },

  -- Conform
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end,
  },

  -- Lazygit
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
  },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end,
  },
  
  -- Github Copilot
  {
    "github/copilot.vim"
  }
})
