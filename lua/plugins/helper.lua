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
end
