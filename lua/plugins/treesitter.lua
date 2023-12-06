return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufRead',
    opts = true,
    config = function()
      require 'configs.treesitter'
    end,
    dependencies = {
      {
        'numToStr/Comment.nvim',
        dependencies = 'JoosepAlviste/nvim-ts-context-commentstring',
        config = function()
          require 'configs.treesitter.commentToggle'
        end,
      },
      {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = function()
          require 'configs.treesitter.autopairs'
        end,
      },
      'nvim-treesitter/nvim-treesitter-textobjects',
      {
        'windwp/nvim-ts-autotag',
        event = 'InsertEnter',
        config = function()
          require 'configs.treesitter.ts-autotag'
        end,
      },
    },
  },
}