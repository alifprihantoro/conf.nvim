local navic = require 'nvim-navic'
local icons = require('configs.helper.icons').kind
navic.setup {
  icons,
  lsp = {
    auto_attach = true,
  },
  highlight = true,
  click = true,
}
