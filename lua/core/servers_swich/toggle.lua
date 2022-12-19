local active = require('core.servers_swich.active')

return function()
  if TOGGLE_SERVER_LSP == false then
    vim.cmd('Lsp')
    active.lsp()
    TOGGLE_SERVER_LSP = true
  else
    active.coc()
    TOGGLE_SERVER_LSP = false
  end
end
