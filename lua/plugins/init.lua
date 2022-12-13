local status, packer = pcall(require, "packer")
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use "lewis6991/impatient.nvim"
  use 'wbthomason/packer.nvim'
  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    config = "require('plugins.configs.lualine')"
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    event = "BufEnter",
    config = function()
      require "plugins.configs.treesitter"
    end,
  }
  -- File icons
  use {
    'kyazdani42/nvim-web-devicons',
    event = "BufRead",
    config = "require('plugins.configs.devicons')"
  }
  use {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = "require('plugins.configs.autopairs')"
  }
  use {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter"
  }
  use {
    'lewis6991/gitsigns.nvim',
    event = "BufWinEnter",
    config = "require('plugins.configs.gitsigns')"
  }
  -- For git blame & browse
  use {
    'dinhhuy258/git.nvim',
    config = function() require('git').setup() end,
    event = "BufWinEnter"
  } 
  -- coc install
  use {
    'neoclide/coc.nvim', 
    branch = 'master',
    run = 'yarn install --frozen-lockfile',
    event = "BufWinEnter",
    config = "require('plugins.configs.coc')"
  } 
  use {
    "folke/which-key.nvim",
    event = "BufWinEnter",
    config = "require('plugins.configs.wichKey')"
  }
  -- comment togle
  use {
    "terrortylor/nvim-comment",
    config = function() require('nvim_comment').setup() end,
    event = "BufWinEnter"
  } 
  use {
  'nvim-tree/nvim-tree.lua',
  tag = 'nightly', -- optional, updated every week. (see issue #1193)
  cmd = "NvimTreeToggle",
  config = "require('plugins.configs.fileTree')"
  }
  use {
    'embark-theme/vim',
    as = 'embark',
    config = "require('plugins.configs.theme')"
  }
  use{
    'vimwiki/vimwiki',
    ft = "vimwiki",
    event = "BufWinEnter"
  }
  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufWinEnter",
    config = "require('plugins.configs.indentBlank')"
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} },
    cmd = 'Telescope',
    config = "require('plugins.configs.telescope')"
  }
  -- use 'wuelnerdotexe/vim-astro'
  -- plugin for js vanilla (delete if not use)
  use {
    'jonsmithers/vim-html-template-literals',
    cmd = 'Htl',
    config = "require('plugins.configs.htmlLiteralJs')"
  }
  use {
    'pangloss/vim-javascript',
    config = "require('plugins.configs.jsNative')"
  }
end)
