local icons = require 'configs.completion.icons'
local mapping = require 'configs.completion.maps'
local cmp = require 'cmp'
local window = require 'configs.completion.window'
local sources = require 'configs.completion.sources'

-- command
vim.cmd 'set completeopt=menu,menuone,noselect'
cmp.setup {
  view = {
    window = window,
    experimental = {
      ghost_text = true,
    },
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- for `luasnip` users.
    end,
  },
  mapping = mapping,
  sources = cmp.config.sources(sources.sc1, sources.sc2),
  formatting = {
    format = icons.setup,
  },
}

require 'configs.completion.cmdLine'