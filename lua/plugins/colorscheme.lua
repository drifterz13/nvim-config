return {
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd([[colorscheme tokyonight]])
  --   end,
  -- },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup({
        style = 'warm'
      })
      vim.cmd([[colorscheme onedark]])
    end,
  }
}
