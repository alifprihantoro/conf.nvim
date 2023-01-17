local key = vim.keymap.set
local gitCommitCmd = " && cd $(git rev-parse --show-toplevel) && git add . && git commit"
local function gitCommit()
  vim.cmd("!" .. _G.TMUX_POPUP .. "'cd %:p:h" .. gitCommitCmd .. "'")
end

local function gitPushCommit()
  vim.cmd("!cd %:h && eval \"$(ssh-agent -s)\" && ssh-add ~/.ssh/github && git push --all")
end

-- normal
key('n', '<leader>gs', ':Telescope git_status<CR>')
key('n', '<leader>gc', ':Telescope git_branches<CR>')
key('n', '<leader>gf', ':Telescope git_flow<CR>')
key('n', '<leader>gv', gitCommit)
key('n', '<leader>gp', gitPushCommit)
