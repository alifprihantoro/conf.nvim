local toggle = require('core.serverScwich.toggle')
local bufopts = { silent = true }
local key = vim.keymap.set

key('n', '<leader>.', toggle, bufopts)
key('i', "<c-.>", toggle, bufopts)
