local toggle = require('core.servers_swich.toggle')
local active = require('core.servers_swich.active')
local coc = require('plugins.configs.coc.mapping') -- load custom mapping

local bufopts = { silent = true }
local key = vim.keymap.set
local cmd = vim.api.nvim_create_user_command

key('n', '<leader>.', toggle, bufopts)
key('i', "<c-.>", toggle, bufopts)

cmd('Coc', function()
  coc()
  print('enable coc')
end, {})
