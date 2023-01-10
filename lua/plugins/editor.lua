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
    "terrortylor/nvim-comment",
    config = function() require('nvim_comment').setup() end,
    event = "VimEnter"
  }
  -- vimwiki or for md
  use {
    'vimwiki/vimwiki',
    opts = true,
    ft = { "markdown" },
    setup = function()
      print('vimwiki load')
      require('configs.editor.wiki.before')
    end,
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
