return function(use)
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
  -- Unless you are still migrating, remove the deprecated commands from v1.x
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  use {
    "nvim-neo-tree/neo-tree.nvim",
		event = "BufWinEnter",
		cmd = "Neotree",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = "require('configs.file.neotree')",
  }
end
