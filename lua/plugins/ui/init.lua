return {
  require('plugins.ui.themes').tokyonight,
  {
    'folke/noice.nvim',
    event = 'BufRead',
    ---@type NoiceConfig
    opts = {

      notify = {
        enabled = true,
        view = 'notify',
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
        enabled = true, -- enables the Noice popupmenu UI
        ---@type 'nui'|'cmp'
        backend = 'cmp', -- backend to use to show regular cmdline completions
      },
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },
  'rcarriga/nvim-notify',
  {
    'nvim-lualine/lualine.nvim',
    cmd = 'LualineToggle',
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    dependencies = {
      'TheGLander/indent-rainbowline.nvim',
    },
  },
  {
    'folke/which-key.nvim',
    keys = { '<leader>', '"', "'", '`', 'c', 'v' },
  },
  -- dashboard
  {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    enabled = true,
    init = false,
  },
  -- fold like vscode
  {
    'kevinhwang91/nvim-ufo',
    dependencies = 'kevinhwang91/promise-async',
  },
  -- for winbar icon
  {
    'SmiteshP/nvim-navic',
    dependencies = 'neovim/nvim-lspconfig',
    event = 'BufRead',
  },
}
