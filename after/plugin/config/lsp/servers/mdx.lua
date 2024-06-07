require('lspconfig').mdx_analyzer.setup {
  init_options = {
    typescript = {
      enable = true,
      tsdk = vim.fs.normalize '$HOME/.pnpm/global/5/node_modules/typescript/lib/',
    },
  },
}
