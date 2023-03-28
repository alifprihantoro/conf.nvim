return function(use)
  use {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    after = "nvim-treesitter",
    config = "require('configs.editor.autopairs')"
  }
  use {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter",
    config = "require('configs.editor.tsAutoTag')"
  }
  -- comment togle
  use {
    'JoosepAlviste/nvim-ts-context-commentstring',
    event = "BufWinEnter",
    opts = true,
  }
  use {
    'numToStr/Comment.nvim',
    after = 'nvim-ts-context-commentstring',
    config = "require('configs.editor.commentToggle')"
  }
end
