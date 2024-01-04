local lsp = require 'lspconfig'
lsp.astro.setup {
  init_options = {
    typescript = {
      tsdk = vim.fs.normalize '/data/data/com.termux/files/usr/lib/node_modules/typescript/lib',
    },
  },
}
