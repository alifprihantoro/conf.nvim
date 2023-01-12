return function(use)
  -- file tree
  use {
    'nvim-tree/nvim-tree.lua',
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    cmd = { "NvimTreeOpen", "NvimTreeFindFileToggle" },
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
end
