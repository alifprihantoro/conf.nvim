require 'configs.completion'

-- get snipmate
require('luasnip.loaders.from_snipmate').lazy_load()

local extend = require('luasnip').filetype_extend

local js = { '_', 'html', 'javascript' }
local jsx = { '_', 'html', 'javascript', 'javascriptreact' }
local tsx = _G.MERGE(jsx, { 'typescript', 'typescriptreact' })

extend('html', js)
extend('javascript', js)
extend('typescript', _G.MERGE(js, { 'typescript' }))
extend('typescriptreact', jsx)
extend('javascriptreact', tsx)
extend('astro', _G.MERGE(tsx, { 'astro' }))