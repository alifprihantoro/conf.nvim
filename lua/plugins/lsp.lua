return {
  -- lsp
  {
    'neovim/nvim-lspconfig',
    config = function()
      require 'configs.lspConf'
    end,
  },
  -- cmp start
  {
    'hrsh7th/nvim-cmp',
    event = 'BufWinEnter',
    lazy = true,
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    dependencies = 'nvim-cmp',
  },
  {
    'hrsh7th/cmp-buffer',
    dependencies = 'cmp-nvim-lsp',
  },
  {
    'hrsh7th/cmp-path',
    dependencies = 'cmp-buffer',
  },
  {
    'hrsh7th/cmp-cmdline',
    dependencies = 'cmp-path',
  },
  {
    'tamago324/cmp-zsh',
    dependencies = 'nvim-cmp',
  },
  {
    'Shougo/deol.nvim',
    dependencies = 'nvim-cmp',
  },
  -- {
  --   "jcha0713/cmp-tw2css",
  --   dependencies = 'nvim-cmp',
  -- },
  {
    'dcampos/cmp-emmet-vim',
    dependencies = 'nvim-cmp',
  },
  {
    'mattn/emmet-vim',
    dependencies = 'cmp-emmet-vim',
  },
  {
    'L3MON4D3/LuaSnip',
    dependencies = 'emmet-vim',
  },
  {
    'saadparwaiz1/cmp_luasnip',
    dependencies = 'LuaSnip',
    config = function()
      require 'configs.luasnip'
    end,
  },
  {
    'hrsh7th/cmp-nvim-lua',
    dependencies = 'nvim-cmp',
  },
  --end cmp
}