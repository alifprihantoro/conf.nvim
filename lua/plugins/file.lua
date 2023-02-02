-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    cmd = 'Telescope',
    config = function() require('configs.file.telescope') end,
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
    },
  }
  , {
    'xiyaowong/telescope-emoji.nvim',
    after = 'telescope.nvim',
    config = function()require("telescope").load_extension("emoji")end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function() require('configs.file.neotree') end,
  }
}
