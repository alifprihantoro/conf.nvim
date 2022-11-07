local builtin = require('telescope.builtin')
local actions = require "telescope.actions"

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.commands, {})


require('telescope').setup{
  defaults = {
    layout_config = {
      -- vertical = { width = 100 },
      horizontal = {
        preview_cutoff = 0,
        width = 100,
        height = 100
      },
    },
    mappings = {
      i = {
        ["<c-j>"] = actions.move_selection_next,
        ["<c-k>"] = actions.move_selection_previous,
        ["<c-p>"] = actions.preview_scrolling_up,
        ["<c-n>"] = actions.preview_scrolling_down,
        ["<c-u>"] = false,
      },
      n = {
        ["q"] = actions.close,
      }
    }
  },
  pickers = {
    -- find_files = {
    --   theme = "dropdown",
    -- }
  },
  extensions = {
  }
}
