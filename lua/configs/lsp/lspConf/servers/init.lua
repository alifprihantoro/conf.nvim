local capability   = require('configs.lsp.lspConf.utils.capability')
local lua          = require('configs.lsp.lspConf.servers.lua')
local lsp          = require('lspconfig')
local jsonls       = require('configs.lsp.lspConf.servers.jsonls')
local yaml         = require('configs.lsp.lspConf.servers.yaml')
local rust         = require('configs.lsp.lspConf.servers.rust')
local capabilities = { capabilities = capability }

-- lang, core
lsp.lua_ls.setup(lua) -- lua
-- lsp.flow.setup(capabilities)
lsp.tailwindcss.setup(capabilities)
lsp.tsserver.setup(capabilities) -- js typescript
lsp.html.setup({
  filetypes = { "html", "javascript","typescript" },
  init_options = {
      configurationSection = { "html", "javascript","typescript","css" },
      embeddedLanguages = {
        css = true,
        javascript = true
      },
      provideFormatter = true
  },
  capabilities = capability
})
lsp.jsonls.setup(jsonls)
lsp.cssls.setup(capabilities)
lsp.stylelint_lsp.setup(capabilities)
-- lsp.cssmodules_ls.setup {}
lsp.eslint.setup(capabilities)
lsp.yamlls.setup(yaml)
lsp.bashls.setup(capabilities)
lsp.pyright.setup {}
lsp.rust_analyzer.setup(rust)
lsp.taplo.setup {
  cmd = { "taplo", "lsp", "stdio" }
}
-- framework
lsp.astro.setup(capabilities) -- astro
