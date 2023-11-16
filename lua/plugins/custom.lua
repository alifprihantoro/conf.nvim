return {
  -- gh cli
  {
    'muryp/muryp-gh.nvim',
    config = function()
      require('muryp-gh')
    end,
    dependencies = { 'nvim-telescope/telescope.nvim', 'folke/which-key.nvim' },
  },
  -- git setup
  {
    'muryp/muryp-git-setup.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'folke/which-key.nvim' },
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