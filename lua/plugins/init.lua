local lsp = require('plugins.lsp')
local style = require('plugins.style')
local editor = require('plugins.editor')
local helper = require('plugins.helper')
local file = require('plugins.file')
local custom = require('plugins.custom')

local root = vim.fn.fnamemodify("./.repro", ":p")

-- set stdpaths to use .repro
for _, name in ipairs({ "config", "data", "state", "cache" }) do
  vim.env[("XDG_%s_HOME"):format(name:upper())] = root .. "/" .. name
end

-- bootstrap lazy
local lazypath = root .. "/plugins/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

-- install plugins
local plugins = {
  -- do not remove the colorscheme!
  "folke/tokyonight.nvim",
  -- add any other pugins here
}
require("lazy").setup({
  "nvim-lua/plenary.nvim",
  "MunifTanjim/nui.nvim",
  lsp,
  style,
  editor,
  helper,
  file,
  custom,
},{})
-- use "lewis6991/impatient.nvim"
