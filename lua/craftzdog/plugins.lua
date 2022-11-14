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
  -- use 'preservim/vim-markdown'
  use 'wuelnerdotexe/vim-astro'
  -- plugin for js vanilla (delete if not use)
  use 'jonsmithers/vim-html-template-literals'
  use 'pangloss/vim-javascript'
  use 'alvan/vim-closetag'
end)
require('nvim_comment').setup()
vim.cmd([[
autocmd BufRead,BufEnter *.astro set filetype=astro
let g:astro_typescript = 'enable'

let g:html_indent_style1 = "inc"
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,typescript'
let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion,litHtmlRegion',
      \ 'javascript.jsx': 'jsxRegion,litHtmlRegion',
      \ 'javascript':     'litHtmlRegion',
      \ 'typescript':     'litHtmlRegion',
      \ }

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
set conceallevel=1
]])
