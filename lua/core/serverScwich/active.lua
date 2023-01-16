local M = {}
local lsp = require('configs.lsp.lspConf.maps.custom') -- load custom mapping
local coc = require('configs.lsp.coc.mapping') -- load custom mapping
TES_COUNT = 1
M.lsp = function()
  vim.b.coc_suggest_disable = 1 -- disable coc completion
  if CEK_CMP_ACTIVE == true then -- enable lsp completion
    require 'cmp'.setup({
      enabled = true
    })
    require('configs.lsp.lspConf.cmp')
  end
  lsp()
end

M.coc = function()
  vim.b.coc_suggest_disable = 0 -- enable coc completion
  -- disable lsp completion
  if CEK_CMP_ACTIVE == true then
    require 'cmp'.setup({
      enabled = false
    })
  end
  coc()
end

return M
