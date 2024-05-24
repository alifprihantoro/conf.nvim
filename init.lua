vim.g.mapleader = ' '
require 'configs.lazy'
vim.api.nvim_create_augroup('config_reload', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight on yank',
  group = vim.api.nvim_create_augroup('kickStarterYank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
