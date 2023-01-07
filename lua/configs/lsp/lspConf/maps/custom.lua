local bufopts = { silent = true }
local key = vim.keymap.set
return function()
  key('n', 'K', vim.lsp.buf.hover, bufopts)
  key('n', '<leader>tr', vim.lsp.buf.references, bufopts)
  key('n', '<leader>ti', vim.lsp.buf.implementation, bufopts)
  key('n', '<leader>tg', vim.lsp.buf.definition, bufopts)
  vim.api.nvim_create_user_command('Format', function() vim.lsp.buf.format { async = true } end, {})
end
