local toggle = function()require('core.toggle.toggle')end

local bufopts = { noremap = true, silent = true, buffer = true }
local key = vim.keymap.set
key('n', '<leader>.', toggle, bufopts)
key('i', "<c-.>", toggle, bufopts)
