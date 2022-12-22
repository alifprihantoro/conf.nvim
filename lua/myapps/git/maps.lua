local gitSave = require('myapps.git.function.gsv')
local gitPush = require('myapps.git.function.gsv')
local gitCommit = require('myapps.git.function.gsv')

local key = vim.keymap.set
local cmd = vim.api.nvim_create_user_command
local opt = { silent = true }

key('i', '<leader>gg', gitSave, opt)
key('i', '<leader>gp', gitPush, opt)
key('i', '<leader>gc', gitCommit, opt)
key('i', '<leader>gf', ':Telescope git_files<CR>', opt)
key('i', '<leader>gb', ':Telescope git_branch<CR>', opt)
key('i', '<leader>gc', ':Telescope git_commits<CR>', opt)
key('i', '<leader>gs', ':Telescope git_status<CR>', opt)

cmd('GitCheck')
