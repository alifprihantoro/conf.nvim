local icons = require('configs.lsp.lspConf.cmp.icons')
local maps = require('configs.lsp.lspConf.cmp.maps')
local cmp = require 'cmp'
local window = require 'configs.lsp.lspConf.cmp.window'
local snippet = require 'configs.lsp.lspConf.cmp.snippet'
local sources = require 'configs.lsp.lspConf.cmp.sources'
require('configs.lsp.lspConf.cmp.cmdLine')

vim.cmd('set completeopt=menu,menuone,noselect')
cmp.setup({
  view = {
    window = window,
    experimental = {
      ghost_text = true
    }
  },
  snippet = snippet,
  mapping = cmp.mapping.preset.insert(maps),
  sources = cmp.config.sources(sources.sc1, sources.sc2),
  formatting = {
    format = icons.setup,
  },
})

CEK_CMP_ACTIVE = true
