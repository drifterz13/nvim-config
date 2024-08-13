vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-n>', '<C-n>zz', { noremap = true })
vim.keymap.set('n', '{', '{zz', { noremap = true })
vim.keymap.set('n', '}', '}zz', { noremap = true })
vim.keymap.set('n', 'n', 'nzz', { noremap = true })
vim.keymap.set('n', 'N', 'Nzz', { noremap = true })
