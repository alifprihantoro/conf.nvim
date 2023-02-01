return {
  -- Statusline
  {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
    config = function()
      require('configs.style.lualine')
    end
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
    as = 'embark',
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
    config = function() require('configs.style.indentBlank') end
  }
}
