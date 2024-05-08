local M = {}
M.sc1 = {
  { name = 'codeium' },
  { name = 'nvim_lsp' },
  { name = 'buffer', priority = 7 },
  { name = 'path', priority = 7 },
  { name = 'zsh' },
  { name = 'luasnip' }, -- For luasnip users.
  -- { name = 'snippy' },
  { name = 'nvim_lua' },
  -- { name = 'cmp-tw2css'},
}
M.sc2 = {
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
        'php',
      },
    },
  },
  -- { name = 'emoji' },
}
return M