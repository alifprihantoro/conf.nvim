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
  -- plugin for js vanilla (delete if not use)
  use {
    'jonsmithers/vim-html-template-literals',
    cmd = 'Htl',
    config = "require('configs.editor.htmlLiteralJs')"
  }
  use {
    'pangloss/vim-javascript',
    after = 'vim-html-template-literals',
    config = "require('configs.editor.jsNative')"
  }
end
