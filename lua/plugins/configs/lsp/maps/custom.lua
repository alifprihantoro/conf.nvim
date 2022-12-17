local bufopts = { noremap = true, silent = true, buffer = true }
local key = vim.keymap.set
key('n', 'K', vim.lsp.buf.hover, bufopts)
key('n', '<leader>tr', vim.lsp.buf.references, bufopts)
key('n', '<leader>ti', vim.lsp.buf.implementation, bufopts)
key('n', '<leader>tg', vim.lsp.buf.definition, bufopts)


key('i', "<C-j>", "<c-n>", bufopts)
