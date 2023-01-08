local cmd = vim.api.nvim_create_user_command
-- require('impatient') -- for cache to load fast
-- vim.defer_fn(function()
--   pcall(require, "impatient")
-- end, 0)
vim.g.mapleader = " "
require('plugins')
require('configs.editor.wiki.before')
require('core.serverScwich')
require('core.loadTreeSitter')
-- active vimwiki
cmd('VimWiki', function()
  print('vimwiki load')
  require('configs.editor.wiki.before')
  -- vim.cmd('WikiActive')
end,{})
