local layout = require 'configs.editor.telescope.configs.layout'
local maps = require 'configs.editor.telescope.configs.maps'
local extentions = require 'configs.editor.telescope.configs.extentions'

require 'configs.editor.telescope.extensi'
require('telescope').setup {
  defaults = {
    file_ignore_patterns = { '.git/', '.cache' },
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
  pickers = {
    find_files = {
      hidden = true,
    },
  },
}