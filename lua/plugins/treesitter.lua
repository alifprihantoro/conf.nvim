return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufRead',
    opts = true,
    config = function()
      require 'configs.style.treesitter'
    end,
    dependencies = {
      {
        'numToStr/Comment.nvim',
        dependencies = 'JoosepAlviste/nvim-ts-context-commentstring',
        config = function()
          require 'configs.editor.commentToggle'
        end,
      },
      {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = function()
          require 'configs.editor.autopairs'
        end,
      },
      'nvim-treesitter/nvim-treesitter-textobjects',
      {
        'windwp/nvim-ts-autotag',
        event = 'InsertEnter',
        config = function()
          require 'configs.lang.web.ts-autotag'
        end,
      },
    },
  },
}