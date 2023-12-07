local cmd = vim.api.nvim_create_user_command
local format = function()
  vim.lsp.buf.format { async = true }
end

vim.api.nvim_create_user_command('Format', format, {})
-- cmd
cmd('LspDiagnosticOpenFloat', vim.diagnostic.open_float, {})
cmd('LspDiagnosticPrev', vim.diagnostic.goto_prev, {})
cmd('LspDecDiagnosticNext', vim.diagnostic.goto_next, {})
cmd('LspDecDiagnosticList', vim.diagnostic.setloclist, {})
cmd('LspBufDec', vim.lsp.buf.declaration, {})
cmd('LspBufHelp', vim.lsp.buf.signature_help, {})
cmd('LspBufAddFolder', vim.lsp.buf.add_workspace_folder, {})
cmd('LspBufRmFolder', vim.lsp.buf.remove_workspace_folder, {})
cmd('LspBufListFolder', function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, {})
cmd('LspBufDef', vim.lsp.buf.type_definition, {})
cmd('LspBufRename', vim.lsp.buf.rename, {})
cmd('LspBufCodeAction', vim.lsp.buf.code_action, {})
cmd('LspInstallServer', function()
  _G.LspInstallServer { termux = false }
end, {})
cmd('LspInstallServerTermux', function()
  _G.LspInstallServer { termux = true }
end, {})