require('core.toggle.maps')
local active = require('core.toggle.active')

vim.api.nvim_create_augroup("_serverCek", { clear = true })

local toggle = function()require('core.toggle.toggle')end
TOGGLE_SERVER_LSP = false
FIRST_ACTIVE_SERVER = 0
vim.api.nvim_create_autocmd(
  "FileType",{
  pattern = {"lua","astro"},
  callback = function()
    if FIRST_ACTIVE_SERVER == 0 then
      TOGGLE_SERVER_LSP = true
      vim.cmd('Lsp')
      active.lsp()
    end
  end,
  group = "_serverCek",
  })
