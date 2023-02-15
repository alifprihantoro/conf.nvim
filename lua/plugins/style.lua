return {
  -- Statusline
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('configs.style.lualine')
    end,
    lazy = false,
  }
  , {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require "configs.style.treesitter"
    end,
  }
  -- File icons
  , {
    'kyazdani42/nvim-web-devicons',
    event = "BufWinEnter",
    config = function() require('configs.style.devicons') end
  }
  -- theme color scheme
  , {
    'embark-theme/vim',
    name = 'embark',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd.colorscheme("embark")
      vim.cmd [[
        set termguicolors
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      ]]
    end
  }
  , {
    "lukas-reineke/indent-blankline.nvim",
    config = function() require('configs.style.indentBlank') end,
    lazy = false,
  }
}
