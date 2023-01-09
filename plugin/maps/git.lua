-- NOTE :
-- > git flow
-- > git merge
local key = vim.keymap.set


function tes()
  local pickers = require "telescope.pickers"
  local finders = require "telescope.finders"
  local actions = require "telescope.actions"
  local conf = require("telescope.config").values
  local action_state = require "telescope.actions.state"

  pickers.new({}, {
    prompt_title = "Select cloned repo to remove",
    finder = finders.new_table {
      results = { "one", "two" }
    },
    attach_mappings = function(prompt_bufnr, _)
      -- modifying what happens on selection with <CR>
      actions.select_default:replace(function()
        -- closing picker
        actions.close(prompt_bufnr)
        -- the typically selection is table, depends on the entry maker
        -- here { [1] = "one", value = "one", ordinal = "one", display = "one" }
        -- value: original entry
        -- ordinal: for sorting, possibly transformed value
        -- display: for results list, possibly transformed value
        local selection = action_state.get_selected_entry()
        vim.cmd('e '..selection.value)
        -- do stuff
      end)
      -- keep default keybindings
      return true
    end,
    sorter = conf.generic_sorter({}),
  }):find()
end
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

local function gitFlow()
  NAME_BRANC_BEFORE = vim.cmd('echo system("echo $(git symbolic-ref --short HEAD)")')
  -- vim.cmd('Telescope git_branches')
  tes()
  NAME_BRANC_NOW = vim.cmd('echo system("echo $(git symbolic-ref --short HEAD)")')
  print('hello :')
  print(NAME_BRANC_NOW)
end

local function git_merge()
  vim.cmd('!git merge')
end
-- normal
key('n', '<leader>gs', ':Telescope git_status<CR>')
key('n', '<leader>gs', ':Telescope git_merge<CR>')
key('n', '<leader>gc', gitFlow)
key('n', '<leader>gv', gitCommit)
key('n', '<leader>gp', gitPushCommit)
key('n', '<leader>gf', gitFlow)
