local gitSave = require('myapps.git.function.gsv')
local gitPush = require('myapps.git.function.gsv')
local gitCommit = require('myapps.git.function.gsv')

local key = vim.keymap.set
local opt = { silent = true }

key('n', '<leader>gg', gitSave, opt)
key('n', '<leader>gp', gitPush, opt)
key('n', '<leader>gf', ':Telescope git_files<CR>', opt)
key('n', '<leader>gb', ':Telescope git_branch<CR>', opt)
key('n', '<leader>gc', ':Telescope git_commits<CR>', opt)
key('n', '<leader>gs', ':Telescope git_status<CR>', opt)
