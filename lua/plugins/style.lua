return function (use)
  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    config = "require('plugins.configs.lualine')"
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    cmd = 'TSUpdate',
    config = function()
      require "plugins.configs.treesitter"
    end,
  }
  -- File icons
  use {
    'kyazdani42/nvim-web-devicons',
    event = "BufWinEnter",
    config = "require('plugins.configs.devicons')"
  }
  -- theme color scheme
  use {
    'embark-theme/vim',
    as = 'embark',
    config = "require('plugins.configs.theme')"
  }
  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "InsertEnter",
    after = "nvim-treesitter",
    config = "require('plugins.configs.indentBlank')"
  }
end
