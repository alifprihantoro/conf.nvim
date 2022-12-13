vim.cmd [[
let g:coc_global_extensions = ['coc-json','coc-css','coc-cssmodules','coc-emmet','coc-eslint','coc-prettier','coc-snippets','@yaegassy/coc-tailwindcss3','coc-tsserver','coc-vimlsp']
" ,'coc-powershell'
]]
require('plugins.configs.coc.mapping')
require('plugins.configs.coc.func')
