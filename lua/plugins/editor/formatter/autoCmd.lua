local fmt = require 'plugins.editor.formatter.fn'
_G.FORMATTER_ACTIVE = true
vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'Auto format on save',
  group = vim.api.nvim_create_augroup('formatOnSave', { clear = true }),
  callback = function()
    if _G.FORMATTER_ACTIVE then
      fmt()
    end
  end,
})
