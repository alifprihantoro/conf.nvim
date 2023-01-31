return function(use)
  -- file tree
  use {
    'nvim-tree/nvim-tree.lua',
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    cmd = { "NvimTreeOpen", "NvimTreeFindFileToggle", "NvimTreeToggle" },
    config = "require('configs.file.fileTree')"
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    cmd = 'Telescope',
    config = "require('configs.file.telescope')",
    requires = {
      { 'nvim-lua/plenary.nvim' },
    },
  }
  use {
    'xiyaowong/telescope-emoji.nvim',
    after = 'telescope.nvim',
    config = 'require("telescope").load_extension("emoji")',
  }
  use {
    'muryp/nvim-muryp-git',
    config = function()
      require('nvim-muryp-git')
    end
  }

end
