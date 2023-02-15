-- require('impatient') -- for cache to load fast
-- vim.defer_fn(function()
--   pcall(require, "impatient")
-- end, 0)
vim.g.mapleader = " "
require('configs.editor.wiki.before')
require('core.serverScwich')
require('plugin')

-- require('configs.style.lualine')
-- require('configs.helper.wichKey')
require('configs.style.theme')
