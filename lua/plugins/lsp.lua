return function(use)
  -- coc install
  use {
    'neoclide/coc.nvim',
    -- branch = 'master',
    cmd = "Coc",
    -- run = 'yarn install --frozen-lockfile',
    config = "require('plugins.configs.coc')"
  }
  -- lsp
  use {
    'neovim/nvim-lspconfig',
    cmd = "Lsp",
    config = "require('plugins.configs.lsp')",
  }
  -- cmp start
  use {
    'hrsh7th/nvim-cmp',
    after = "nvim-lspconfig",
    config = "require('plugins.configs.lsp.cmp')",
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
    'dcampos/nvim-snippy',
    after = "cmp-cmdline",
  }
  use {
    'dcampos/cmp-snippy',
    after = "nvim-snippy",
    config = "require('plugins.configs.lsp.snippy')"
  }
  --end cmp
end
