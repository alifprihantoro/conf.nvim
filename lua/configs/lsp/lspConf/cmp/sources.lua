local M = {}
M.sc1 = {
  { name = 'nvim_lsp', priority = 8 },
  -- { name = 'zsh' },
  { name = 'luasnip', priority = 7 }, -- For luasnip users.
  { name = 'cmp-tw2css', priority = 7 },
}
M.sc2 = {
  { name = 'buffer', priority = 7 },
  { name = 'path', priority = 7 },
  { name = 'emmet_vim', priority = 9 },
  -- { name = 'emoji' },
}
return M
