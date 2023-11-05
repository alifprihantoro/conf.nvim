return {
  expand = function(args)
    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
  end,
}
