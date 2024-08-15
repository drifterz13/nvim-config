local builtin = require('telescope.builtin')

require('telescope').setup({
  defaults = {
    file_ignore_patterns = { 'node_modules', '.git', 'dist', '.config/nvim/pack', 'coverage' },
  },
})

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)
