return function(use)
  use { -- git sign
    'lewis6991/gitsigns.nvim',
    config = "require('configs.helper.gitSigns')",
    event = "VimEnter",
  }
  use { 'folke/which-key.nvim',
    opt = true,
    keys = { "<leader>", "z", "b" },
    config = "require('configs.helper.wichKey')"
  }
end
