local lua                 = require('configs.lsp.lspConf.servers.lua')
local lsp                 = require('lspconfig')
local jsonls              = require('configs.lsp.lspConf.servers.jsonls')
local yaml                = require('configs.lsp.lspConf.servers.yaml')
local rust                = require('configs.lsp.lspConf.servers.rust')
local lsp_defaults        = lsp.util.default_config

-- folding
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true
}
lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

require 'lspconfig'.luau_lsp.setup {}
-- lang, core
lsp.lua_ls.setup(lua) -- lua
-- lsp.flow.setup(capabilities)
lsp.tailwindcss.setup({})
lsp.tsserver.setup({}) -- js typescript
lsp.html.setup({
  filetypes = { "html", "javascript", "typescript" },
  init_options = {
    configurationSection = { "html", "javascript", "typescript", "css" },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = true
  },
})
lsp.jsonls.setup(jsonls)
lsp.cssls.setup({})
lsp.stylelint_lsp.setup({})
-- lsp.cssmodules_ls.setup {}
lsp.eslint.setup({})
lsp.yamlls.setup(yaml)
lsp.bashls.setup({})
lsp.pyright.setup {}
lsp.rust_analyzer.setup(rust)
lsp.taplo.setup {
  cmd = { "taplo", "lsp", "stdio" }
}
-- framework
lsp.astro.setup({
  init_options = {
    typescript = {
      tsdk = vim.fs.normalize('/data/data/com.termux/files/usr/lib/node_modules/typescript/lib')
    }
  },
}) -- astro
