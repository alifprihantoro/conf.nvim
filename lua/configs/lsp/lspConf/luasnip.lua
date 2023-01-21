-- require("luasnip.loaders.from_vscode").lazy_load()
local extend = require("luasnip").filetype_extend
require("luasnip.loaders.from_snipmate").lazy_load()

extend("javascript", { '_', 'html', 'javascript', 'typescriptreact', 'typescript' })
extend("typescript", { '_', 'html', 'javascript', 'typescriptreact', 'typescript' })
extend("typescriptreact", { '_', 'html', 'javascript', 'javascriptreact', 'typescriptreact' })
extend("javascriptreact", { '_', 'html', 'javascript', 'javascriptreact', 'typescriptreact' })
extend("astro", { '_', 'javascript', 'javascriptreact', 'typescriptreact', 'html' })

require('core.serverScwich.active').lsp()
