--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require('plugins.configs.lsp.servers.lua')
require('plugins.configs.lsp.servers.astro')
