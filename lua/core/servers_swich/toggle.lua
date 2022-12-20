local active = require('core.servers_swich.active')

return function()
  if TOGGLE_SERVER_LSP == false then
    vim.cmd('Lsp')
  else
    if CEK_COC_ACTIVE == 0 then
      vim.cmd('Coc')
    else
      print('swich to coc...')
    end
    active.coc()
    TOGGLE_SERVER_LSP = false
  end
end
