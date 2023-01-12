local layout = require "configs.file.telescope.configs.layout"
local maps = require "configs.file.telescope.configs.maps"

require "configs.file.telescope.plugins"
require('telescope').setup {
  defaults = {
    layout_config = layout,
    mappings = maps,
    extensions = {
      emoji = {
        action = function(emoji)
          vim.fn.setreg("*", emoji.value)
          print([[Press p or "*p to paste this emoji]] .. emoji.value)
        end,
      }
    },
  },
}
