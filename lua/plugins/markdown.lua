return {
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
