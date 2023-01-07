local active = require('core.serverScwich.active')
local cmd = vim.api.nvim_create_user_command

vim.cmd [[
let g:coc_global_extensions = ['coc-json','coc-css','coc-cssmodules','coc-emmet','coc-eslint','coc-prettier','coc-snippets','@yaegassy/coc-tailwindcss3','coc-tsserver','coc-vimlsp']
]]
require('configs.lsp.coc.func')

cmd('Coc', function()
  print('coc loaded...')
  active.coc()
  TOGGLE_SERVER_LSP = false
end, {})
