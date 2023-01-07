return function (use)
  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    config = "require('configs.style.lualine')"
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    cmd = 'TSUpdate',
    config = function()
      require "configs.style.treesitter"
    end,
  }
  -- File icons
  use {
    'kyazdani42/nvim-web-devicons',
    event = "BufWinEnter",
    config = "require('configs.style.devicons')"
  }
  -- theme color scheme
  use {
    'embark-theme/vim',
    as = 'embark',
    config = "require('configs.style.theme')"
  }
  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "InsertEnter",
    after = "nvim-treesitter",
    config = "require('configs.style.indentBlank')"
  }
end
