local M = {}
local lsp = require('configs.lsp.lspConf.maps.custom') -- load custom mapping
local coc = require('configs.lsp.coc.mapping') -- load custom mapping
TES_COUNT = 1
M.lsp = function()
  -- disable coc completion
  vim.b.coc_suggest_disable = 1
  -- enable lsp completion
  if CEK_CMP_ACTIVE == true then
    require 'cmp'.setup({
      enabled = true
    })
    require('configs.lsp.lspConf.cmp')
    require('configs.lsp.lsp.snippy')
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
