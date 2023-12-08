local M = {}
M.sc1 = {
  { name = 'nvim_lsp' },
  { name = 'git' },
  -- { name = 'zsh' },
  { name = 'luasnip' }, -- For luasnip users.
  { name = 'nvim_lua' },
  -- { name = 'cmp-tw2css'},
}
M.sc2 = {
  { name = 'buffer', priority = 7 },
  { name = 'path', priority = 7 },
  {
    name = 'emmet_vim',
    priority = 9,
    option = {
      filetypes = {
        'html',
        'xml',
        'typescriptreact',
        'javascriptreact',
        'css',
        'sass',
        'scss',
        'less',
        'heex',
        'tsx',
        'jsx',
        'js',
        'ts',
        'typescript',
        'javascript',
      },
    },
  },
  -- { name = 'emoji' },
}
return M
