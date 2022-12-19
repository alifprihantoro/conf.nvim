require('core.servers_swich.maps')
local active = require('core.servers_swich.active')
local lazy = require('global.lazy').lazyLoadBuf

-- default lsp active
TOGGLE_SERVER_LSP = false
CEK_FIRST_SERVER = 0

local callback = function()
  if CEK_FIRST_SERVER == 0 then
    require('core.servers_swich.cekFile')()
    if TOGGLE_SERVER_LSP == true then
      vim.cmd('Lsp')
    else
      vim.cmd('Coc')
    end
    CEK_FIRST_SERVER = 1
  end
end
CEK_LSP_ACTIVE = false
local callbackBuff = function()
  if TOGGLE_SERVER_LSP == true then
    active.lsp()
  else
    active.coc()
  end
end
lazy('_server_swich_buf', callbackBuff)
lazy('_server_swich', callback)
