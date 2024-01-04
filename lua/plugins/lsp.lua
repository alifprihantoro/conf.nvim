---NOTE:all lsp configs on folder `after/plugin/config/lsp`
return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lsp = require 'lspconfig'
      local lsp_defaults = lsp.util.default_config

      --- settings
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true, -- folding
      }
      lsp_defaults.capabilities =
        vim.tbl_deep_extend('force', lsp_defaults.capabilities, require('cmp_nvim_lsp').default_capabilities())
    end,
  },
}