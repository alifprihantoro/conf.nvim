local layout = require "configs.file.telescope.configs.layout"
local maps = require "configs.file.telescope.configs.maps"
local new_maker = require "configs.file.telescope.extensi.preview"
local extentions = require "configs.file.telescope.configs.extentions"

require "configs.file.telescope.extensi"
require('telescope').setup {
  defaults = {
    border = false,
    layout_config = layout,
    mappings = maps,
    buffer_previewer_maker = new_maker,
    extensions = extentions,
  },
}
