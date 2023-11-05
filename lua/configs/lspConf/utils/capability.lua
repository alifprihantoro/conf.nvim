--Enable (broadcasting) snippet capability for completion
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
return capabilities
