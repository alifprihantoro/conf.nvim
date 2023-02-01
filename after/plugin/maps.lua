local wk = require("which-key")
wk.register({
  p = { ':bp<CR>', "PREV_BUF" },
  n = { ':bn<CR>', "NEXT_BUF" },
  w = { ':w<CR>', "SAVE" },
  q = { ':q<CR>', "QUIT" },
  i = { '^', "FIRST_COL", mode = { "n", "v" } },
  a = { '$', "LAST_COL", mode = { "n", "v" } },
  s = { ':%s /', "SEARCH" },
  u = { '<C-^>', "TOGGLE_CHANGE_BUF" },
  l = { '<C-w>l', "GO_RIGH_SCREEN" },
  h = { '<C-w>h', "GO_LEFT_SCREEN" },
  j = { '<C-w>j', "GO_DOWN_SCREEN" },
  k = { '<C-w>k', "GO_UP_SCREEN" },
  [','] = { ':e ~/.config/nvim/init.lua<CR>', "GOTO_NVIM_CONF" },
  ['-'] = { '<C-w>s', "SPLIT_HORIZONTAL" },
  [']'] = { '<C-w>>', "SPLIT_LEFT" },
  ["["] = { '<C-w><', "SPLIT_RIGHT" },
  ['<Del>'] = { 'V"_d', "DELETE_LINE" },
  ['<BS>'] = { 'V"_d', "DELETE_LINE" },
  b = {
    name = 'BUFFER',
    f = { ':bfirst<CR>', "FIRST" },
    l = { ':blast<CR>', "LAST" },
    d = { ':bd<CR>', "DELETE" },
    a = { ':Bda<CR>', "DELETE_ALL" },
  },
  d = {
    name = 'DELETE_AND_DIR',
    d = { 'bve"+d', "DEL_LINE" },
    a = { 'ggVG"+d', "DEL_ALL" },
    n = { ':Cdn<CR><CR>', "DIR_BY_CURRENT_FILE" },
    g = { ':Cdg<CR><CR>', "DIR_BY_CURRENT_DOT_GIT" },
  },
  y = {
    name = 'CP_CLIPBOARD',
    y = { 'bve"+y', "LINE" },
    a = { 'ggVG"+y', "ALL" },
  },
  r = {
    name = 'CUT_CLIPBOARD',
    e = { 'vb"_d', "LINE" },
    b = { 've"_d', "ALL" },
    a = { 'ggVG"_d', "ALL" },
  },
}, { prefix = "<leader>" })

wk.register({
  d = { '"+d', 'CUT', mode = { "v" } },
  y = { '"+y', 'COPY', mode = { "v" } }
})
