require 'configs.completion'

-- get snipmate
require('luasnip.loaders.from_snipmate').lazy_load()

local extend = require('luasnip').filetype_extend
local merger = require 'global.merger'

local js = { '_', 'html', 'javascript' }
local jsx = { '_', 'html', 'javascript', 'javascriptreact' }
local tsx = merger(jsx, { 'typescript', 'typescriptreact' })

extend('html', js)
extend('javascript', js)
extend('typescript', merger(js, { 'typescript' }))
extend('typescriptreact', jsx)
extend('javascriptreact', tsx)
extend('astro', merger(tsx, { 'astro' }))