local M = {}

-- M.lazyLoadFileType = function(name, patern, callback)
--   vim.api.nvim_create_augroup(name, { clear = true })
--   vim.api.nvim_create_autocmd('FileType', {
--     pattern = patern,
--     callback = callback,
--     group = name,
--   })
-- end
--
-- M.lazyLoadBuf = function(name, callback)
--   vim.api.nvim_create_augroup(name, { clear = true })
--   vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
--     callback = callback,
--     group = name,
--   })
-- end
return M