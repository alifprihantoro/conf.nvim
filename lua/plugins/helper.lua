return function(use)
  use { -- git sign
    'lewis6991/gitsigns.nvim',
    config = "require('configs.helper.gitSigns')",
    event = "BufWinEnter",
    opts = true,
    requires = {
      { 'nvim-lua/plenary.nvim' },
    },
  }
  -- git diff/browser old commit
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use {
    'akinsho/git-conflict.nvim',
    tag = "*",
    config = "require('configs.helper.gitConflict')"
  }
  use {
    'folke/which-key.nvim',
    config = "require('configs.helper.wichKey')"
  }
  -- dashboard
  use {
    "goolord/alpha-nvim",
    event = "BufWinEnter",
    opts = true,
    config = "require('configs.helper.dasboard')"
  }
  -- fold like vscode
  use {
    'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async',
    config = "require('configs.helper.ufo')"
  }
  -- for winbar icon
  use {
    "SmiteshP/nvim-navic",
    dependencies = "neovim/nvim-lspconfig",
    event = "BufRead",
    config = function()
      require("configs.helper.breadcrumb")
    end,
  }
end
