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
    config = "require('plugins.configs.cmp')",
    after = "nvim-lspconfig"
  }
  use {
    'hrsh7th/cmp-nvim-lsp',
    after = "nvim-cmp",
  }
  use {
    'hrsh7th/cmp-buffer',
    after = "cmp-nvim-lsp"
  }
  use {
    'hrsh7th/cmp-path',
    after = "cmp-nvim-lsp"
  }
  use {
    'hrsh7th/cmp-cmdline',
    after = "cmp-nvim-lsp"
  }
  use {
    'dcampos/nvim-snippy',
    after = "cmp-nvim-lsp"
  }
  use {
    'dcampos/cmp-snippy',
    after = "cmp-nvim-lsp",
    config = "require('plugins.configs.snippy')"
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
  use {
    'lewis6991/gitsigns.nvim',
    event = "VimEnter",
    config = "require('plugins.configs.gitsigns')"
  }
  -- For git blame & browse
  use {
    'dinhhuy258/git.nvim',
    config = "require('plugins.configs.git')",
    event = "VimEnter"
  }
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
