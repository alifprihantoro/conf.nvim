local cmd = vim.api.nvim_create_user_command
local installServer = require 'configs.lspConf.utils.installServer'
local key = vim.keymap.set
local format = function()
  vim.lsp.buf.format { async = true }
end

local opts = { silent = true }
key('n', '<leader>tG', vim.lsp.buf.declaration, opts)
key('n', '<leader>tg', vim.lsp.buf.definition, opts)
key('n', 'K', vim.lsp.buf.hover, opts)
key('n', '<leader>tI', vim.lsp.buf.implementation, opts)
key('n', '<leader>th', vim.lsp.buf.signature_help, opts)
key('n', '<leader>twa', vim.lsp.buf.add_workspace_folder, opts)
key('n', '<leader>twr', vim.lsp.buf.remove_workspace_folder, opts)
key('n', '<leader>twl', function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, opts)
key('n', '<leader>D', vim.lsp.buf.type_definition, opts)
key('n', '<leader>tn', vim.lsp.buf.rename, opts)
key({ 'n', 'v' }, '<leader>ti', vim.lsp.buf.code_action, opts)
key('n', '<leader>tr', vim.lsp.buf.references, opts)
key('n', '<C-f>', function()
  vim.lsp.buf.format { async = true }
end, opts)
key('n', '<c-d>', ':LspDiagnosticOpenFloat<CR>', opts)
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