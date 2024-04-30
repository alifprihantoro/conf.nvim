return {
  {
    'muryp/muryp-lsp-setup.nvim',
    import = 'muryp-lsp-setup/plugins',
  },
  {
    'muryp/muryp-md.nvim',
    config = function()
      require("muryp-md").setup({})
    end,
    import = 'muryp-md/plugins',
  },
  {
    'muryp/muryp-editor-setup.nvim',
    import = 'muryp-editor-setup.plugins',
  },
  {
    'muryp/muryp-treesitter-setup.nvim',
    import = 'muryp-treesitter-setup.plugins'
  },
  {
    'muryp/muryp-ui-setup.nvim',
    import = 'muryp-ui-setup.plugins'
  },
  'sbdchd/neoformat',
  'muryp/muryp-findList.nvim',
  {
    'muryp/muryp-setup-completion.nvim',
    import = 'muryp-completion.plugin',
  },
  {
    "Exafunction/codeium.nvim",
    cmd = "Codeium",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
      })
    end
  },
}