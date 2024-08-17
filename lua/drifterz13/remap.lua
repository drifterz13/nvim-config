vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "{", "{zz", { noremap = true })
vim.keymap.set("n", "}", "}zz", { noremap = true })
vim.keymap.set("n", "<leader>nt", ":Neotree toggle<CR>", { noremap = true })
vim.keymap.set("n", "<leader>f", ":LspZeroFormat<CR>", { noremap = true })
