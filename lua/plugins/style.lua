return function(use)
  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    config = "require('configs.style.lualine')",
    cmd = 'LualineToggle',
  }
  use {
    'nvim-treesitter/nvim-treesitter',
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
    config = "require('configs.style.indentBlank')"
  }
  use({
    "folke/noice.nvim",
    config = "require('configs.style.noice')",
    after = 'nvim-notify',
    setup = function()
      vim.cmd('set nolazyredraw')
    end,
    requires = {
      "MunifTanjim/nui.nvim",
    }
  })
  use({
    "rcarriga/nvim-notify",
    config = "require('configs.style.notify')",
  })
end
