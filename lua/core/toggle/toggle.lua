local active = require('core.toggle.active')

if TOGGLE_SERVER_LSP == false then
  TOGGLE_SERVER_LSP = false
  active.coc()
  print('coc active...')
else
  TOGGLE_SERVER_LSP = true
  active.lsp()
  print('lsp active...')
end
