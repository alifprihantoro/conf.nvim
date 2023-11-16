-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]
return {
  {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    config = function()
      require 'configs.file.telescope'
    end,
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
    },
  },
  {
    'xiyaowong/telescope-emoji.nvim',
    dependencies = 'nvim-telescope/telescope.nvim',
    config = function()
      require('telescope').load_extension 'emoji'
    end,
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    event = 'BufWinEnter',
    cmd = 'Neotree',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require 'configs.file.neotree'
    end,
  },
}