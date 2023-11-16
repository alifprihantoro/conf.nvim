local cmd = vim.api.nvim_create_user_command
local installServer = require 'configs.lspConf.utils.installServer'
local bufopts = { silent = true }
local key = vim.keymap.set
local format = function()
  vim.lsp.buf.format { async = true }
end

-- normal maps
key('n', 'K', vim.lsp.buf.hover, bufopts)
key('n', '<leader>tr', vim.lsp.buf.references, bufopts)
key('n', '<leader>tn', vim.lsp.buf.rename, bufopts)
key('n', '<leader>ti', vim.lsp.buf.code_action, bufopts)
key('n', '<leader>tg', vim.lsp.buf.definition, bufopts)
key('n', '<C-f>', format, bufopts)
key('n', '<c-d>', ':LspDiagnosticOpenFloat<CR>', bufopts)
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
cmd('LspInstallServerTermux', function()
  installServer { cli = false }
end, {})
