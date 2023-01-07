return function (use)
  use {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    after = "nvim-tree.lua",
    config = "require('plugins.configs.autopairs')"
  }
  use {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter",
    config = "require('plugins.configs.tsAutoTag')"
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
    config = "require('plugins.configs.wiki.after')"
  }
  -- plugin for js vanilla (delete if not use)
  use {
    'jonsmithers/vim-html-template-literals',
    cmd = 'Htl',
    config = "require('plugins.configs.htmlLiteralJs')"
  }
  use {
    'pangloss/vim-javascript',
    config = "require('plugins.configs.jsNative')"
  }
end
