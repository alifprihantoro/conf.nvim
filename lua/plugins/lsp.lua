return function(use)
  -- coc install
  -- use {
  --   'neoclide/coc.nvim',
  --   branch = 'release',
  --   cmd = "CocEnable",
  --   run = 'yarn install --frozen-lockfile',
  --   config = "require('configs.lsp.coc')"
  -- }
  -- lsp
  use {
    'neovim/nvim-lspconfig',
    event = "BufWinEnter",
    opts = true,
    config = "require('configs.lsp.lspConf')",
  }
  -- cmp start
  use {
    'hrsh7th/nvim-cmp',
    event = "BufWinEnter",
    opts = true,
  }
  use {
    'hrsh7th/cmp-nvim-lsp',
    after = "nvim-cmp",
  }
  use {
    'hrsh7th/cmp-buffer',
    after = "cmp-nvim-lsp",
  }
  use {
    'hrsh7th/cmp-path',
    after = "cmp-buffer",
  }
  use {
    'hrsh7th/cmp-cmdline',
    after = "cmp-path",
  }
  use {
    'tamago324/cmp-zsh',
    after = 'nvim-cmp',
  }
  use {
    'Shougo/deol.nvim',
    after = 'nvim-cmp',
  }
  -- use {
  --   "jcha0713/cmp-tw2css",
  --   after = 'nvim-cmp',
  -- }
  use {
    'dcampos/cmp-emmet-vim',
    after = 'nvim-cmp',
  }
  use {
    "mattn/emmet-vim",
    after = 'cmp-emmet-vim'
  }
  use {
    'L3MON4D3/LuaSnip',
    after = 'emmet-vim'
  }
  use {
    'saadparwaiz1/cmp_luasnip',
    after = 'LuaSnip',
    config = "require('configs.lsp.lspConf.luasnip')"
  }
  use {
    'hrsh7th/cmp-nvim-lua',
    after = "nvim-cmp",
  }
  --end cmp
end
