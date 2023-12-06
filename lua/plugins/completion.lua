return {
  -- cmp start
  {
    'hrsh7th/nvim-cmp',
    event = 'BufWinEnter',
    lazy = true,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'tamago324/cmp-zsh',
      'Shougo/deol.nvim',
      --   "jcha0713/cmp-tw2css",
      'dcampos/cmp-emmet-vim',
      'mattn/emmet-vim',
      {
        'saadparwaiz1/cmp_luasnip',
        dependencies = {
          'L3MON4D3/LuaSnip',
          'muryp/nvim-muryp-snippet-collection'
        },
        config = function()
          require 'configs.luasnip'
        end,
      },
      'hrsh7th/cmp-nvim-lua',
    },
  },
}