require 'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    underline = true,
    virtual_text = {
      spacing = 5,
      severity_limit = 'Warning',
    },
    update_in_insert = true,
  }
)
require 'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
    filetypes = { "html", "xml", "astro" },
  }
}
-- OR
require('nvim-ts-autotag').setup({
  filetypes = { "html", "xml", "astro" },
})
