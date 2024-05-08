require 'configs.editor.cmp'
-- require('luasnip.loaders.from_snipmate').lazy_load()
require('luasnip.loaders.from_vscode').lazy_load()

local MERGE = function(t1, t2)
  for _, v in ipairs(t2) do
    table.insert(t1, v)
  end
  return t1
end

local extend = require('luasnip').filetype_extend
--
local js = { '_', 'html', 'javascript' }
local jsx = { '_', 'html', 'javascript', 'javascriptreact' }
local tsx = MERGE(jsx, { 'typescript', 'typescriptreact' })

extend('html', js)
extend('javascript', js)
extend('typescript', MERGE(js, { 'typescript' }))
extend('typescriptreact', jsx)
extend('javascriptreact', tsx)
extend('astro', MERGE(tsx, { 'astro' }))
