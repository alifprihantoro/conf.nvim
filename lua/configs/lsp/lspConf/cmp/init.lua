local icons = require('plugins.configs.lsp.cmp.icons')
local maps = require('plugins.configs.lsp.cmp.maps')
local cmp = require 'cmp'

vim.cmd('set completeopt=menu,menuone,noselect')
cmp.setup({
  view = {
    window = {
      completion = {
        -- col_offset = -10,
        zindex = 999,
        side_padding = 5
      },
      documentation = {
        zindex = 999,
        -- winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None"
      }
    },
    experimental = {
      ghost_text = true
    }
  },
  snippet = {
    expand = function(args)
      require('snippy').expand_snippet(args.body) -- For `snippy` users.
    end,
  },
  mapping = cmp.mapping.preset.insert(maps),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
    { name = 'path' },
  }),
  formatting = {
    format = icons.setup,
  },
})

CEK_CMP_ACTIVE = true
