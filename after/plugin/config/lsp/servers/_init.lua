local lsp = require 'lspconfig'
-- lang, core
lsp.cssls.setup {} --- css
lsp.tailwindcss.setup {
  tailwindCSS = {
    classAttributes = { 'class', 'className', 'class:list', 'classList', 'ngClass', 'DefaultClassName' },
    ['editor.quickSuggestions'] = {
      strings = 'on',
    },
  },
} --- tailwindcss
lsp.gopls.setup {} ---golang
lsp.phpactor.setup {} ---php
-- lsp.cssmodules_ls.setup {}                        --- css import module
lsp.bashls.setup {} --- bash
lsp.pyright.setup {} --- python
lsp.taplo.setup { cmd = { 'taplo', 'lsp', 'stdio' } } --- toml
require('lspconfig').prismals.setup {}

--- lint
lsp.stylelint_lsp.setup {} --- css lint
lsp.eslint.setup {
  setting = {
    rename = false,
  },
} --- js/ts lint
