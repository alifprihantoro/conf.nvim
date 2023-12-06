return {
  {
    'muryp/muryp-git-setup.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'folke/which-key.nvim',
      'muryp/muryp-gh.nvim',
      'lewis6991/gitsigns.nvim',
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'akinsho/git-conflict.nvim',
    },
  },
  'muryp/nvim-muryp-snippet-collection', -- vimwiki or for md
  {
    'muryp/muryp-checklist.nvim',
    config = function()
      require('muryp-checklist').setup { map = "<leader>'" }
    end,
  },
  {
    'muryp/muryp-link.nvim',
    config = function()
      require('muryp-link').setup {}
    end,
  },
}