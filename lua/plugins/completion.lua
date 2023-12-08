return {
  -- cmp start
  {
    'hrsh7th/nvim-cmp',
    event = 'BufWinEnter',
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
      'hrsh7th/cmp-nvim-lua',
      'saadparwaiz1/cmp_luasnip',

      {
        'L3MON4D3/LuaSnip',
        config = function()
          require 'configs.completion.luasnip'
        end,
        dependencies = {
          'muryp/nvim-muryp-snippet-collection',
          'hrsh7th/nvim-cmp',
        },
      },
    },
  },
}
