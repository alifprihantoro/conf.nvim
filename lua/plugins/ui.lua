return {
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
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require 'configs.style.lualine'
    end,
    cmd = 'LualineToggle',
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufWinEnter',
    opts = true,
    config = function()
      require 'configs.style.indentBlank'
    end,
  },
  {
    'folke/which-key.nvim',
    keys = { '<leader>', '"', "'", '`', 'c', 'v' },
    event = 'VeryLazy',
    config = function() end,
  },
  -- dashboard
  {
    'goolord/alpha-nvim',
    event = 'BufWinEnter',
    lazy = true,
    config = function()
      require 'configs.helper.dasboard'
    end,
  },
  -- fold like vscode
  {
    'kevinhwang91/nvim-ufo',
    dependencies = 'kevinhwang91/promise-async',
    config = function()
      require 'configs.helper.ufo'
    end,
  },
  -- for winbar icon
  {
    'SmiteshP/nvim-navic',
    dependencies = 'neovim/nvim-lspconfig',
    event = 'BufRead',
    config = function()
      require 'configs.helper.breadcrumb'
    end,
  },
}