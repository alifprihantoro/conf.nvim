local navic = require 'nvim-navic'
local icons = require('configs.helper.icons').kind
navic.setup {
  icons,
  lsp = {
    auto_attach = true,
    -- preference = {'html','tsserver'}
  },
  highlight = true,
  click = true,
  lazy_update_context = true,
  safe_output = true,
}