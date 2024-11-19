return {
  {
    'muryp/muryp-git.nvim',
    config = function()
      require 'muryp-git'
    end,
  },
  {
    'pwntester/octo.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('octo').setup {
        suppress_missing_scope = {
          projects_v2 = true, -- WARNING: don't remove, this for fix bug
        },
      }
    end,
  },
  {
    'paopaol/telescope-git-diffs.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
    },
  },
  'nvim-telescope/telescope.nvim',
  'folke/which-key.nvim',
  {
    'muryp/muryp-gh.nvim',
    config = function()
      require('muryp-gh').setup()
    end,
  },
  {
    'echasnovski/mini.diff',
    event = 'VeryLazy',
    opts = {
      view = {
        style = 'sign',
        signs = {
          add = '',
          change = '',
          delete = '󰗨',
        },
      },
    },
  },
  'nvim-lua/plenary.nvim',
  'sindrets/diffview.nvim',
  'akinsho/git-conflict.nvim',
}