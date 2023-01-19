return function(use)
  use {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    after = "nvim-tree.lua",
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
    config = "require('configs.editor.commentToggle')"
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup({
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      })
    end
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
