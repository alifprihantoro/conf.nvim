local status, packer = pcall(require, "packer")
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- use "lewis6991/impatient.nvim"
  use 'wbthomason/packer.nvim'
  -- coc install
  use {
    'neoclide/coc.nvim',
    branch = 'master',
    run = 'yarn install --frozen-lockfile',
    config = "require('plugins.configs.coc')"
  }
  -- lsp
  use {
    'neovim/nvim-lspconfig',
    cmd = "Lsp",
    config = "require('plugins.configs.lsp')",
  }
  -- cmp start
   use {
     'hrsh7th/nvim-cmp',
    cmd = "Lsp",
     config = "require('plugins.configs.lsp.cmp')",
   }
   use {
     'hrsh7th/cmp-nvim-lsp',
     after = "nvim-lspconfig",
     requires = { "hrsh7th/nvim-cmp" }
   }
   use {
     'hrsh7th/cmp-buffer',
     after = "nvim-lspconfig",
     requires = { "hrsh7th/nvim-cmp" }
   }
   use {
     'hrsh7th/cmp-path',
     after = "nvim-lspconfig",
     requires = { "hrsh7th/nvim-cmp" }
   }
   use {
     'hrsh7th/cmp-cmdline',
     after = "nvim-lspconfig",
     requires = { "hrsh7th/nvim-cmp" }
   }
   use {
     'dcampos/nvim-snippy',
     after = "nvim-lspconfig",
     requires = { "hrsh7th/nvim-cmp" },
   }
   use {
     'dcampos/cmp-snippy',
     after = "nvim-snippy",
     requires = { "hrsh7th/nvim-cmp",'dcampos/nvim-snippy' },
     config = "require('plugins.configs.lsp.snippy')"
   }
  --end cmp
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
  use {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    after = "nvim-tree.lua",
    config = "require('plugins.configs.autopairs')"
  }
  use {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter",
    after = "nvim-treesitter",
    config = "require('plugins.configs.tsAutoTag')"
  }
  -- git start
  use {
    'lewis6991/gitsigns.nvim',
    config = "require('plugins.configs.git.signs')",
    event = "VimEnter",
  }
  use { -- For git blame & browse
    'dinhhuy258/git.nvim',
    config = "require('plugins.configs.git.signs')",
    event = "VimEnter"
  }
  -- git end
  use {
    "folke/which-key.nvim",
    cmd = "WhicKey",
    config = "require('plugins.configs.wichKey')"
  }
  -- comment togle
  use {
    "terrortylor/nvim-comment",
    config = function() require('nvim_comment').setup() end,
    event = "VimEnter"
  }
  -- file tree
  use {
    'nvim-tree/nvim-tree.lua',
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    config = "require('plugins.configs.fileTree')"
  }
  -- theme color scheme
  use {
    'embark-theme/vim',
    as = 'embark',
    config = "require('plugins.configs.theme')"
  }
  -- vimwiki or for md
  use {
    'vimwiki/vimwiki',
    event = "BufWinEnter",
    config = "require('plugins.configs.wiki.after')"
  }
  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "InsertEnter",
    after = "nvim-treesitter",
    config = "require('plugins.configs.indentBlank')"
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } },
    cmd = 'Telescope',
    config = "require('plugins.configs.telescope')"
  }
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
