local key = vim.keymap.set
local tmux = [[tmux popup -h 90\% -w 90\% -E]]
local gitCommitCmd = " && cd $(git rev-parse --show-toplevel) && git add . && git commit"
local function gitCommit()
  vim.cmd("!" .. tmux .. "'cd %:p:h" .. gitCommitCmd .. "'")
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
