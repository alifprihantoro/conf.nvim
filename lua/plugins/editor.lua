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
    event = "BufWinEnter",
    opts = true,
    'JoosepAlviste/nvim-ts-context-commentstring',
  }
  use {
    'numToStr/Comment.nvim',
    after = 'nvim-ts-context-commentstring',
    config = "require('configs.editor.commentToggle')"
  }
  -- vimwiki or for md
  use {
    'vimwiki/vimwiki',
    opts = true,
    ft = { "markdown" },
    config = "require('configs.editor.wiki.after')"
  }
end
