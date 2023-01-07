return function (use)
  -- git start
  use {
    'lewis6991/gitsigns.nvim',
    config = "require('configs.helper.git.signs')",
    event = "VimEnter",
  }
  use { -- For git blame & browse
    'dinhhuy258/git.nvim',
    config = "require('configs.helper.git.signs')",
    event = "VimEnter"
  }
  -- git end
  use {
    "folke/which-key.nvim",
    cmd = "WhicKey",
    config = "require('configs.helper.wichKey')"
  }
end
