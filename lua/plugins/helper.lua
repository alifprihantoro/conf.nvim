return function (use)
  -- git start
  use {
    'lewis6991/gitsigns.nvim',
    config = "require('plugins.configs.git.signs')",
    event = "VimEnter",
  }
  use { -- For git blame & browse
    'dinhhuy258/git.nvim',
    config = "require('plugins.configs.git.signs')",
    event = "VimEnter"
  }
  -- git end
  use {
    "folke/which-key.nvim",
    cmd = "WhicKey",
    config = "require('plugins.configs.wichKey')"
  }
end
