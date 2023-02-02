return {
  -- coc install
  -- {
  --   'neoclide/coc.nvim',
  --   -- branch = 'master',
  --   cmd = "CocEnable",
  --   -- run = 'yarn install --frozen-lockfile',
  --   config = function()require('configs.lsp.coc')end
  -- }
  -- lsp
   {
    'neovim/nvim-lspconfig',
    config = function()require('configs.lsp.lspConf')end,
  }
  -- cmp start
  , {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
  }
  , {
    'hrsh7th/cmp-nvim-lsp',
    after = "nvim-cmp",
  }
  , {
    'hrsh7th/cmp-buffer',
    after = "cmp-nvim-lsp",
  }
  , {
    'hrsh7th/cmp-path',
    after = "cmp-buffer",
  }
  , {
    'hrsh7th/cmp-cmdline',
    after = "cmp-path",
  }
  , {
    'tamago324/cmp-zsh',
    after = 'nvim-cmp',
  }
  , {
    'Shougo/deol.nvim',
    after = 'nvim-cmp',
  }
  , {
    "jcha0713/cmp-tw2css",
    after = 'nvim-cmp',
  }
  , {
    'dcampos/cmp-emmet-vim',
    after = 'nvim-cmp',
  }
  , {
    "mattn/emmet-vim",
    after = 'cmp-emmet-vim'
  }
  , {
    'L3MON4D3/LuaSnip',
    after = 'emmet-vim'
  }
  , {
    'saadparwaiz1/cmp_luasnip',
    after = 'LuaSnip',
    config = function()require('configs.lsp.lspConf.luasnip')end
  }
  --end cmp
}
