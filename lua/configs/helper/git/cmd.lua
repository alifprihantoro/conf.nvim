require('git').setup()
local cmd = vim.api.nvim_create_user_command
local function gitPushCommit()
  local GET_PATH_NOW = vim.fn.expand('%:p:h')
  local gitCommit = " && cd $(git rev-parse --show-toplevel) && git add . && git commit"
  vim.cmd("!tmux popup -E 'cd "..GET_PATH_NOW..gitCommit.."'")
end
cmd("Gsp", gitPushCommit , {})
