local key = vim.keymap.set

local gitCommitCmd = " && cd $(git rev-parse --show-toplevel) && git add . && git commit"
local gitPush = " && gssh && git pushall"
local function gitCommit()
  local GET_PATH_NOW = vim.fn.expand('%:p:h')
  vim.cmd("!tmux popup -E 'cd " .. GET_PATH_NOW .. gitCommitCmd .. "'")
end

local function gitPushCommit()
  local GET_PATH_NOW = vim.fn.expand('%:p:h')
  vim.cmd("!tmux popup -E 'cd " .. GET_PATH_NOW .. gitCommitCmd .. gitPush .. "'")
end

-- normal
key('n', '<leader>gs', ':Telescope git_status<CR>')
key('n', '<leader>gc', ':Telescope git_branches<CR>')
key('n', '<leader>gf', ':Telescope git_flow<CR>')
key('n', '<leader>gv', gitCommit)
key('n', '<leader>gp', gitPushCommit)
