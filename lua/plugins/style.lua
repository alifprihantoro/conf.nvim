return function(use)
  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    config = "require('configs.style.lualine')",
    cmd = 'LualineToggle',
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    event = "BufRead",
    opts = true,
    config = function()
      require "configs.style.treesitter"
    end,
  }
  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }
  -- File icons
  use {
    'kyazdani42/nvim-web-devicons',
    opts = true,
    event = "BufWinEnter",
    config = "require('configs.style.devicons')"
  }
  use {
    "folke/tokyonight.nvim",
    config = function()
      require("configs.style.tokyonight")
    end,
  }
  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufWinEnter",
    opts = true,
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
    event = "BufRead",
    opts = true,
    config = "require('configs.style.notify')",
  })
end