local actions = require "telescope.actions"

return {
  i = {
    ["<c-j>"] = actions.move_selection_next,
    ["<c-k>"] = actions.move_selection_previous,
    ["<c-p>"] = actions.preview_scrolling_up,
    ["<c-n>"] = actions.preview_scrolling_down,
    ["<C-f>"] = require('telescope.actions.layout').toggle_preview,
    ["<c-u>"] = false,
    ["<c-l>"] = false,
  },
  n = {
    ["q"] = actions.close,
    ["<leader>p"] = require('telescope.actions.layout').toggle_preview
  }
}
