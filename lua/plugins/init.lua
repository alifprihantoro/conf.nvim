local lsp = require('plugins.lsp')
local style = require('plugins.style')
local editor = require('plugins.editor')
local helper = require('plugins.helper')
local file = require('plugins.file')
local custom = require('plugins.custom')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  "nvim-lua/plenary.nvim",
  "MunifTanjim/nui.nvim",
  lsp,
  style,
  editor,
  helper,
  file,
  custom,
},{
  })
-- use "lewis6991/impatient.nvim"
