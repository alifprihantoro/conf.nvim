return {
  'nvim-treesitter/nvim-treesitter',
  event = 'BufRead',
  opts = true,
  config = function()
    require 'configs.editor.treesitter'
  end,
  dependencies = {
    {
      'windwp/nvim-ts-autotag',
      event = 'InsertEnter',
      config = function()
        ---@diagnostic disable-next-line: missing-fields
        require('nvim-ts-autotag').setup {
          opts = {
            enable_close = true, -- Auto close tags
            enable_rename = true, -- Auto rename pairs of tags
            enable_close_on_slash = true, -- Auto close on trailing </
          },
          filetypes = {
            'html',
            'xml',
            'astro',
            'javascriptreact',
            'typescriptreact',
            'javascript',
            'typescript',
            'markdown',
            'php',
          },
        }
      end,
    },
    {
      'JoosepAlviste/nvim-ts-context-commentstring',
      config = function()
        require('ts_context_commentstring').setup {
          enable_autocmd = false,
        }
      end,
      dependencies = {
        {
          'numToStr/Comment.nvim',
          opts = {},
          config = function()
            require('Comment').setup {
              pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
            }
          end,
        },
      },
    },
  },
}
