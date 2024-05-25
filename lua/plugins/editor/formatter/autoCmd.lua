local fmt = require 'plugins.editor.formatter.fn'
-- autocommand by lsp ready
vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'Auto format on save',
  group = vim.api.nvim_create_augroup('formatOnSave', { clear = true }),
  callback = function()
    fmt(true)
  end,
})
