local M = {}

local is_transparent = false

function M.ColorMyPencils(color)
  color = color or 'tokyonight'
  vim.cmd.colorscheme(color)

  is_transparent = not is_transparent

  if is_transparent then
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  else
    vim.api.nvim_set_hl(0, 'Normal', { bg = vim.api.nvim_get_hl_by_name('Normal', true).background })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background })
  end
end

return M
