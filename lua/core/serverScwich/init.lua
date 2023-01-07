require('core.serverScwich.maps')
local lazy = require('global.lazy').lazyLoadBuf

-- default lsp active
TOGGLE_SERVER_LSP = false
CEK_FIRST_SERVER = 0
CEK_CMP_ACTIVE = 0
CEK_COC_ACTIVE = 0

local callback = function()
  if CEK_FIRST_SERVER == 0 then
    CEK_FIRST_SERVER = 1
    require('core.serverScwich.cekFile')()
    if TOGGLE_SERVER_LSP == true then
      vim.cmd('Lsp')
    else
      vim.cmd('Coc')
    end
  end
  if TOGGLE_SERVER_LSP == true then
    vim.b.coc_suggest_disable = 1
  else
    vim.b.coc_suggest_disable = 0
  end
end
lazy('_server_swich', callback)
