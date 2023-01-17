return function()
  if TOGGLE_SERVER_LSP == false then
    vim.cmd('Lsp')
    print('lsp loaded...')
  else
    vim.cmd('Coc')
    TOGGLE_SERVER_LSP = false
  end
end
