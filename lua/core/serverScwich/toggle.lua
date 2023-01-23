local active = require('core.serverScwich.active')

return function()
  if TOGGLE_SERVER_LSP == false then
    local key = vim.keymap.del
    key("i", "<c-j>")
    key("i", "<c-k>")
    key("i", "<CR>")
    -- scroll info
    key({ 'n', "i" }, "<C-m>")
    key({ 'n', "i" }, "<C-b>")
    active.lsp()
    print('enable lsp...')
    vim.cmd('CocDisable')
  else
    active.coc()
    print('enable coc...')
  end
end
