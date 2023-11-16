local actions = require 'telescope.actions'
local layouts = require 'telescope.actions.layout'

return {
  i = {
    ['<c-j>'] = actions.move_selection_next,
    ['<c-k>'] = actions.move_selection_previous,
    ['<c-p>'] = actions.preview_scrolling_up,
    ['<c-n>'] = actions.preview_scrolling_down,
    ['<C-f>'] = layouts.toggle_preview,
    ['<c-u>'] = false,
    ['<c-l>'] = false,
    ['<C-a>'] = actions.toggle_all,
  },
  n = {
    ['q'] = actions.close,
    ['<C-c>'] = actions.close,
    ['<leader>p'] = layouts.toggle_preview,
    ['<leader>a'] = actions.toggle_all,
  },
}
