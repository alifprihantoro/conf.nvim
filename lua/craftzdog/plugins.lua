local status, packer = pcall(require, "packer")
vim.cmd("let g:vimwiki_map_prefix = '<leader>v'")

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  -- use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
   use {
    'neoclide/coc.nvim', 
    branch = 'master',
    run = 'yarn install --frozen-lockfile'} -- coc install
 use {
  "folke/which-key.nvim"
} 
  use "terrortylor/nvim-comment" -- comment togle
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
end)
require('nvim_comment').setup()
