return {
  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require('bufferline').setup {
        options = {
          offsets = {
            {
              filetype = "neo-tree",
              text = "File Explorer",
              highlight = "Directory",
              text_align = "left",
              separator = true
            }
          },
        },

      }

      vim.opt.termguicolors = true
      vim.keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>")
      vim.keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>")
      vim.keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>")
      vim.keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>")
      vim.keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>")
      vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>")
      vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>")
    end,
  },

}
