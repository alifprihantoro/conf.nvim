local M = {}
M.lsp = function()
  -- disable coc completion
  vim.cmd('let b:coc_suggest_disable = 1')
  -- enable lsp completion
  require 'cmp'.setup({
    enabled = true
  })
  require('plugins.configs.lsp.maps.custom') -- load custom mapping
end

M.coc = function()
  -- enable coc completion
  vim.cmd('let b:coc_suggest_disable = 0')
  -- disable lsp completion
  require 'cmp'.setup({
    enabled = false
  })
  require('plugins.configs.lsp.maps.custom') -- load custom mapping
end

return M
