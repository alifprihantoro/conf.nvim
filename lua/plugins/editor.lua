return {
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    dependencies = 'nvim-treesitter',
    config = function()
      require 'configs.editor.autopairs'
    end,
  },
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    event = 'BufWinEnter',
    lazy = true,
  },
  {
    'numToStr/Comment.nvim',
    dependencies = 'nvim-ts-context-commentstring',
    config = function()
      require 'configs.editor.commentToggle'
    end,
  },
  'sbdchd/neoformat',
}