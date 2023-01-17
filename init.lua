-- require('impatient') -- for cache to load fast
-- vim.defer_fn(function()
--   pcall(require, "impatient")
-- end, 0)
vim.g.mapleader = " "
require('plugins')
require('opts')
require('configs.editor.wiki.before')
require('core.serverScwich')
require('core.loadTreeSitter')
