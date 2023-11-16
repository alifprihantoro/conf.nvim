local layout = require 'configs.file.telescope.configs.layout'
local maps = require 'configs.file.telescope.configs.maps'
local extentions = require 'configs.file.telescope.configs.extentions'

require 'configs.file.telescope.extensi'
require('telescope').setup {
  defaults = {
    borderchars = {
      { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
      prompt = { '─', '│', ' ', '│', '┌', '┐', '│', '│' },
      results = { '─', '│', '─', '│', '├', '┤', '┘', '└' },
      preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
    },
    layout_config = layout,
    mappings = maps,
    extensions = extentions,
  },
}