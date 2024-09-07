return {
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.8",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
      }
    },
    config = function()
      local builtin = require('telescope.builtin')

      require('telescope').setup({
        defaults = {
          file_ignore_patterns = { 'node_modules', '^.git/', 'dist', 'coverage' },
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--hidden",
            "--glob=!.git/*",
          },
        },
        pickers = {
          find_files = {
            -- hidden = true,
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
          }
        }
      })

      vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Project files' })
      vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Git files' })
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input('Grep > ') });
      end, { desc = 'Grep string' })

      require('telescope').load_extension('fzf')
    end
  },
}
