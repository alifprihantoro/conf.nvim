require('which-key').setup {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
  },
  key_labels = {
    ['<space>'] = 'SPC',
    ['<leader>'] = 'SPC',
    ['<cr>'] = 'RET',
    ['<tab>'] = 'TAB',
  },
  popup_mappings = {
    scroll_down = '<c-j>', -- binding to scroll down inside the popup
    scroll_up = '<c-k>', -- binding to scroll up inside the popup
  },
}

_G.IMPORT_FOLDER { include = 'maps' }
