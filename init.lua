-- require('impatient') -- for cache to load fast
-- vim.defer_fn(function()
--   pcall(require, "impatient")
-- end, 0)
require('plugins')
require('configs.editor.wiki.before')
require('core.serversSwich')
require('core.loadTreeSitter')
