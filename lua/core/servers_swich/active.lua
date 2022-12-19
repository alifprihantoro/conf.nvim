local M = {}
local lsp = require('plugins.configs.lsp.maps.custom') -- load custom mapping
local coc = require('plugins.configs.coc.mapping') -- load custom mapping

M.lsp = function()
  -- disable coc completion
  vim.b.coc_suggest_disable = 1
  -- enable lsp completion
  if CEK_LSP_ACTIVE == true then
    require 'cmp'.setup({
      enabled = true
    })
    require('plugins.configs.cmp')
    require('plugins.configs.snippy')
  end
  CEK_LSP_ACTIVE = true
  lsp()
end

M.coc = function()
  -- enable coc completion
  vim.b.coc_suggest_disable = 0
  -- disable lsp completion
  if CEK_LSP_ACTIVE == true then
    require 'cmp'.setup({
      enabled = false
    })
  end
  coc()
end

return M
