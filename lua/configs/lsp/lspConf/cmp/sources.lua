local M = {}
M.sc1 = {
  { name = 'nvim_lsp'},
  -- { name = 'zsh' },
  { name = 'luasnip'}, -- For luasnip users.
  { name = 'cmp-tw2css'},
}
M.sc2 = {
  { name = 'buffer', priority = 7 },
  { name = 'path', priority = 7 },
  { name = 'emmet_vim', priority = 9 },
  -- { name = 'emoji' },
}
return M
