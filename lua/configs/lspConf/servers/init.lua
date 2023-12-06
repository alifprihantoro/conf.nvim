local lua = require 'configs.lspConf.servers.lua'
local lsp = require 'lspconfig'
local jsonls = require 'configs.lspConf.servers.jsonls'
local yaml = require 'configs.lspConf.servers.yaml'
local rust = require 'configs.lspConf.servers.rust'
local html = require 'configs.lspConf.servers.html'
local astro = require 'configs.lspConf.servers.astro'
local lsp_defaults = lsp.util.default_config

--- settings
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true, -- folding
}
lsp_defaults.capabilities =
    vim.tbl_deep_extend('force', lsp_defaults.capabilities, require('cmp_nvim_lsp').default_capabilities()) --- completion

-- lang, core
lsp.luau_lsp.setup {}                                 --- lua
lsp.lua_ls.setup(lua)                                 -- lua
lsp.tsserver.setup {}                                 -- js typescript
lsp.html.setup(html)                                  --- html
lsp.jsonls.setup(jsonls)                              --- json
lsp.cssls.setup {}                                    --- css
lsp.tailwindcss.setup {}                              --- tailwindcss
-- lsp.cssmodules_ls.setup {}                        --- css import module
lsp.yamlls.setup(yaml)                                --- yaml
lsp.bashls.setup {}                                   --- bash
lsp.pyright.setup {}                                  --- python
lsp.rust_analyzer.setup(rust)                         --- rust
lsp.taplo.setup { cmd = { 'taplo', 'lsp', 'stdio' } } --- toml

-- framework
lsp.astro.setup(astro)         -- astro
require('lspConf.servers.mdx') -- mdx
lsp.mdx_analyzer.setup {}      -- mdx

--- lint
lsp.stylelint_lsp.setup {} --- css lint
lsp.eslint.setup {}        --- js/ts lint