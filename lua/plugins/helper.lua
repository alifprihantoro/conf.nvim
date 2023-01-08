return function (use)
  use {-- git sign
    'lewis6991/gitsigns.nvim',
    config = "require('configs.helper.git.signs')",
    event = "VimEnter",
  }
  use { -- For git blame & browse
    'dinhhuy258/git.nvim',
    config = "require('configs.helper.git.cmd')",
    event = "VimEnter"
  }
    use {
    "folke/which-key.nvim",
    cmd = "WhicKey",
    config = "require('configs.helper.wichKey')"
  }
end
