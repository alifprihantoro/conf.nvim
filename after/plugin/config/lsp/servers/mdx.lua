local lsp = require 'lspconfig'
local configs = require 'lspconfig.configs'

configs.mdx_analyzer = {
  default_config = {
    cmd = { 'mdx-language-server', '--stdio' },
    filetypes = { 'markdown.mdx' },
    root_dir = lsp.util.root_pattern('.git', vim.fn.getcwd()),
  },
}
lsp.mdx_analyzer.setup {} -- mdx
