return {
  -- lsp
  {
    'neovim/nvim-lspconfig',
    config = function()
      require 'configs.lspConf'
    end,
  },
}