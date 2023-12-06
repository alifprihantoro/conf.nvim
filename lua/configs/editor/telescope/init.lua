local layout = require 'configs.editor.telescope.configs.layout'
local maps = require 'configs.editor.telescope.configs.maps'
local extentions = require 'configs.editor.telescope.configs.extentions'

require 'configs.editor.telescope.extensi'
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