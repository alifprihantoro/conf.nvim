return {
  { -- git sign
    'lewis6991/gitsigns.nvim',
    config = function() require('configs.helper.gitSigns') end,
    event = "VimEnter",
    requires = {
      { 'nvim-lua/plenary.nvim' },
    },
  },
    "folke/which-key.nvim",
  -- , {
  --   'folke/which-key.nvim',
  --   -- config = function() require('configs.helper.wichKey') end,
  --   lazy = true
  -- }
}
