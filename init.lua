-- require('impatient') -- for cache to load fast
-- vim.defer_fn(function()
--   pcall(require, "impatient")
-- end, 0)
vim.g.mapleader = " "
require('plugins.configs.wiki.before')
require('plugins')
require('core')
require('core.servers_swich')
require('core.loadTreeSitter')
