local icons = require('configs.lspConf.cmp.icons')
local mapping = require('configs.lspConf.cmp.maps')
local cmp = require 'cmp'
local window = require 'configs.lspConf.cmp.window'
local snippet = require 'configs.lspConf.cmp.snippet'
local sources = require 'configs.lspConf.cmp.sources'

-- command
vim.cmd('set completeopt=menu,menuone,noselect')
cmp.setup({
  view = {
    window = window,
    experimental = {
      ghost_text = true
    }
  },
  snippet = snippet,
  mapping = mapping,
  sources = cmp.config.sources(sources.sc1, sources.sc2),
  formatting = {
    format = icons.setup,
  },
})

require('configs.lspConf.cmp.cmdLine')