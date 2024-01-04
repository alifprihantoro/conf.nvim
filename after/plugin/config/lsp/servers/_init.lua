local lsp = require 'lspconfig'
-- lang, core
lsp.tsserver.setup {} -- js typescript
lsp.cssls.setup {} --- css
lsp.tailwindcss.setup {} --- tailwindcss
lsp.gopls.setup{} ---golang
lsp.phpactor.setup{} ---php
-- lsp.cssmodules_ls.setup {}                        --- css import module
lsp.bashls.setup {} --- bash
lsp.pyright.setup {} --- python
lsp.taplo.setup { cmd = { 'taplo', 'lsp', 'stdio' } } --- toml
require'lspconfig'.prismals.setup{}

--- lint
lsp.stylelint_lsp.setup {} --- css lint
lsp.eslint.setup {} --- js/ts lint