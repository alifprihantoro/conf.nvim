local icons = require('plugins.configs.lsp.cmp.icons')
local maps = require('plugins.configs.lsp.cmp.maps')
local cmp = require 'cmp'

vim.cmd('set completeopt=menu,menuone,noselect')
cmp.setup({
  snippet = {
    expand = function(args)
      require('snippy').expand_snippet(args.body) -- For `snippy` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert(maps),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  }),
formatting = {
    format = icons.setup
  },
})
CEK_CMP_ACTIVE = true
