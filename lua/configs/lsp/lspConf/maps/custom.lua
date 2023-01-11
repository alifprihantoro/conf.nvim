return function()
  local bufopts = { silent = true }
  local key = vim.keymap.set
  local format = function()
    vim.lsp.buf.format { async = true }
  end

  key('n', 'K', vim.lsp.buf.hover, bufopts)
  key('n', '<leader>tr', vim.lsp.buf.references, bufopts)
  key('n', '<leader>ti', vim.lsp.buf.implementation, bufopts)
  key('n', '<leader>tg', vim.lsp.buf.definition, bufopts)
  key('n', '<C-f>', format, bufopts)
  vim.api.nvim_create_user_command('Format', format, {})
end
