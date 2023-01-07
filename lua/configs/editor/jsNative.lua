vim.g.html_indent_style1 = "inc"
vim.g.closetag_filetypes = "html,xhtml,phtml,javascript,typescript"
vim.g.javascript_plugin_jsdoc = 1
vim.g.javascript_plugin_ngdoc = 1
vim.g.javascript_plugin_flow = 1
-- for icon
vim.g.javascript_conceal_function             = "ƒ"
vim.g.javascript_conceal_null                 = "ø"
vim.g.javascript_conceal_this                 = "@"
vim.g.javascript_conceal_undefined            = "¿"
vim.g.javascript_conceal_NaN                  = "ℕ"
vim.g.javascript_conceal_prototype            = "¶"
vim.g.javascript_conceal_static               = "•"
vim.g.javascript_conceal_super                = "Ω"

vim.cmd [[
set conceallevel=1
let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion,litHtmlRegion',
      \ 'javascript.jsx': 'jsxRegion,litHtmlRegion',
      \ 'javascript':     'litHtmlRegion',
      \ 'typescript':     'litHtmlRegion',
      \ }
]]
