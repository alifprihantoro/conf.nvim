return function (use)
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
    cmd = 'VimwikiShowVersion',
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
    config = "require('configs.editor.jsNative')"
  }
end
