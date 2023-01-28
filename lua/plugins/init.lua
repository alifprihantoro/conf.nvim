local status, packer = pcall(require, "packer")
local lsp = require('plugins.lsp')
local style = require('plugins.style')
local editor = require('plugins.editor')
local helper = require('plugins.helper')
local file = require('plugins.file')

if status == false then
  return
end
vim.cmd [[packadd packer.nvim]]
packer.startup(function(use)
  use "lewis6991/impatient.nvim"
  use 'wbthomason/packer.nvim'
  lsp(use)
  style(use)
  editor(use)
  helper(use)
  file(use)
end)
