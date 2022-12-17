require('git').setup()
local cmd = vim.api.nvim_create_user_command
local function gitPushCommit()
  local GET_PATH_NOW = vim.fn.expand('%:p:h')
  vim.cmd("!tmux popup -E 'cd "..GET_PATH_NOW.." && fzf'")
end
cmd("Gsp", gitPushCommit , {})
