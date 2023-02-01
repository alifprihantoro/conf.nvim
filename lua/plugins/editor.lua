return {
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    after = "nvim-treesitter",
    config = function() require('configs.editor.autopairs') end
  }
  , {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter",
    config = function() require('configs.editor.tsAutoTag') end
  }
  -- comment togle
  , {
    'JoosepAlviste/nvim-ts-context-commentstring',
  }
  , {
    'numToStr/Comment.nvim',
    after = 'nvim-ts-context-commentstring',
    config = function() require('configs.editor.commentToggle') end
  }
  -- plugin for js vanilla (delete if not use)
  , {
    'jonsmithers/vim-html-template-literals',
    cmd = 'Htl',
    config = function() require('configs.editor.htmlLiteralJs') end
  }
  , {
    'pangloss/vim-javascript',
    after = 'vim-html-template-literals',
    config = function() require('configs.editor.jsNative') end
  }
}
