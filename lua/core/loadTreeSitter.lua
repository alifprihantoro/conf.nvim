local lazyLoad = require('global.lazy').lazyLoadBuf

FIRST_ACTIVE_TRESITTER = 0
lazyLoad('_treeSitterActive', function()
  if FIRST_ACTIVE_TRESITTER == 0 then
    FIRST_ACTIVE_TRESITTER = 1
    vim.cmd('TSUpdate')
  end
end)
