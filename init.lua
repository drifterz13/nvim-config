require("config")

vim.api.nvim_set_option("clipboard", "unnamed")

-- Register a command to switch to terminal background.
local colors = require('config.colors')
vim.api.nvim_create_user_command('ColorMyPencils', function(opts)
  colors.ColorMyPencils(opts.args ~= "")
end, {})

-- Custom keymaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
