return {
  require 'plugins.editor.cmp',
  require 'plugins.editor.lsp',
  require 'plugins.editor.formatter',
  {
    'muryp/muryp-md.nvim',
    config = function()
      require('muryp-md').setup {}
    end,
    import = 'muryp-md/plugins',
  },
  require 'plugins.editor.treesitter',
  {
    'muryp/muryp-editor-setup.nvim',
    import = 'muryp-editor-setup.plugins',
  },
  {
    'muryp/muryp-ui-setup.nvim',
    import = 'muryp-ui-setup.plugins',
  },
  {
    'Exafunction/codeium.nvim',
    cmd = 'Codeium',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      require('codeium').setup {}
    end,
  },
  {
    'muryp/muryp-git-setup.nvim',
    import = 'muryp-git-setup/plugin',
  },
}
