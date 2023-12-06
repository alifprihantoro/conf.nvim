return {
  -- Statusline
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require 'configs.style.lualine'
    end,
    cmd = 'LualineToggle',
  },
  {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufRead',
    opts = true,
    config = function()
      require 'configs.style.treesitter'
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = 'nvim-treesitter',
  },
  {
    'folke/tokyonight.nvim',
    config = function()
      require 'configs.style.tokyonight'
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufWinEnter',
    opts = true,
    config = function()
      require 'configs.style.indentBlank'
    end,
  },
  -- lazy.nvim
  {
    'folke/noice.nvim',
    event = 'BufRead',
    opts = {
      notify = {
        -- Noice can be used as `vim.notify` so you can route any notification like other messages
        -- Notification messages have their level and other properties set.
        -- event is always "notify" and kind can be any log level as a string
        -- The default routes will forward notifications to nvim-notify
        -- Benefit of using Noice for this is the routing and consistent history view
        enabled = true,
        view = "notify",
      },
      lsp = {
        hover = {
          silent = true,
        },
        progress = {
          enabled = false,
        },
      },
      popupmenu = {
        enabled = true,  -- enables the Noice popupmenu UI
        ---@type 'nui'|'cmp'
        backend = 'cmp', -- backend to use to show regular cmdline completions
      },
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },
  {
    'rcarriga/nvim-notify',
    config = function()
      require 'configs.style.notify'
    end,
  },
}