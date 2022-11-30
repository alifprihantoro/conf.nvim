local status, packer = pcall(require, "packer")
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'lewis6991/gitsigns.nvim'
  use {
    'dinhhuy258/git.nvim',
    config = function() require('git').setup() end
  } -- For git blame & browse
  use {
    'neoclide/coc.nvim', 
    branch = 'master',
    run = 'yarn install --frozen-lockfile'
  } -- coc install
  use "folke/which-key.nvim"
  use {"terrortylor/nvim-comment",
    config = function() require('nvim_comment').setup() end
  } -- comment togle
  use {
  'nvim-tree/nvim-tree.lua',
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {
    'embark-theme/vim',
    as = 'embark',
    config = function()
      vim.cmd('colorscheme embark')
    end
  }
  use{
    'vimwiki/vimwiki'
  }
  use "lukas-reineke/indent-blankline.nvim"
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- use 'wuelnerdotexe/vim-astro'
  -- plugin for js vanilla (delete if not use)
  use 'jonsmithers/vim-html-template-literals'
  use 'pangloss/vim-javascript'
  -- use 'alvan/vim-closetag'
end)
