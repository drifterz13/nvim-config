vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "{", "{zz", { noremap = true })
vim.keymap.set("n", "}", "}zz", { noremap = true })
vim.keymap.set("n", "<leader>nt", ":Neotree toggle<CR>", { noremap = true })
vim.keymap.set("n", "<leader>f", ":LspZeroFormat<CR>", { noremap = true })
