---@diagnostic disable: undefined-field
local configPath = vim.fn.stdpath 'config'
local lazypath = configPath .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

---@type LazyConfig
local configs = {
  root = configPath .. '/lazy', -- directory where plugins will be installed
  lockfile = configPath .. '/lazy-lock.json', -- lockfile generated after running update.
  git = {
    log = { '-1' }, -- show commits from the last 3 days
  },
  readme = {
    enabled = false,
  },
  state = vim.fn.stdpath 'state' .. '/lazy/state.json', -- state info for checker and other things
}
local plugins = _G.IMPORT_FOLDER { include = 'plugins', isReturn = true }
require('lazy').setup(plugins, configs)
