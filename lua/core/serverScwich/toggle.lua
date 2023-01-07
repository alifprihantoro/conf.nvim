return function()
  if TOGGLE_SERVER_LSP == false then
    vim.cmd('Lsp')
  else
    vim.cmd('Coc')
    TOGGLE_SERVER_LSP = false
  end
end
