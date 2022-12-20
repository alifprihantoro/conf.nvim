local M = {}
local lsp = require('plugins.configs.lsp.maps.custom') -- load custom mapping
local coc = require('plugins.configs.coc.mapping') -- load custom mapping
TES_COUNT = 1
M.lsp = function()
  -- disable coc completion
  vim.b.coc_suggest_disable = 1
  -- enable lsp completion
  if CEK_CMP_ACTIVE == true then
    require 'cmp'.setup({
      enabled = true
    })
    require('plugins.configs.lsp.cmp')
    require('plugins.configs.lsp.snippy')
  end
  lsp()
end

M.coc = function()
  -- enable coc completion
  vim.b.coc_suggest_disable = 0
  -- disable lsp completion
  if CEK_CMP_ACTIVE == true then
    require 'cmp'.setup({
      enabled = false
    })
  end
  coc()
end

return M
