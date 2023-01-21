local M = {}
local lsp = require('configs.lsp.lspConf.maps.custom') -- load custom mapping
local coc = require('configs.lsp.coc.mapping') -- load custom mapping

M.lsp = function()
  require 'cmp'.setup({
    enabled = true
  })
  lsp()
  require('configs.lsp.lspConf.cmp')
  TOGGLE_SERVER_LSP = true
end

M.coc = function()
  -- disable lsp completion
  require 'cmp'.setup({
    enabled = false
  })
  vim.cmd('CocEnable')
  coc()
  TOGGLE_SERVER_LSP = false
end

return M
