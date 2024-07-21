local IMPORT_GH_MAPS = ":lua require('muryp-gh.api.cmd')"
local git_api = require 'muryp-git-setup.api'

_G.MAP({
  name = '+GIT(VCS)',
  h = {
    name = '+GH_CLI',
    i = {
      name = 'GH_ISSUE',
      cf = { ':Telescope gh_issue_cache<CR>', 'LIST_ISSUE_ON_CACHE_FILE' },
      cr = { ':Telescope gh_issue_cache_rg<CR>', 'LIST_ISSUE_ON_CACHE_RG' },
      i = { ':Telescope gh_issue<CR>', 'EDIT_ISSUE' },
      o = { IMPORT_GH_MAPS .. '.getIssueByNum()<CR>', 'GET_ISSUE_BY_NUM' },
      a = { ':term gh issue create<CR>', 'ADD_ISSUE' },
      s = { IMPORT_GH_MAPS .. '.push()<CR>', 'SYNC_LOCAL_TO_GH' },
      S = { IMPORT_GH_MAPS .. '.update()<CR>', 'SYNC_GH_TO_LOCAL' },
      e = { IMPORT_GH_MAPS .. '.edit()<CR>', 'EDIT' },
      d = { IMPORT_GH_MAPS .. '.delete()<CR>', 'DELETE' },
      p = { IMPORT_GH_MAPS .. '.pin()<CR>', 'pin' },
      P = { IMPORT_GH_MAPS .. '.unpin()<CR>', 'unpin' },
      l = { IMPORT_GH_MAPS .. '.lock()<CR>', 'lock' },
      L = { IMPORT_GH_MAPS .. '.unlock()<CR>', 'unlock' },
      r = { IMPORT_GH_MAPS .. '.reopen()<CR>', 'reopen' },
      C = { IMPORT_GH_MAPS .. '.closed()<CR>', 'closed' },
    },
  },
  g = {
    name = 'GIT',
    b = { ':Telescope git_branches<CR>', 'BRANCH' },
    g = { ':term grb', 'BRANCH' },
    f = { ':Telescope git_flow<CR>', 'FLOW' },
    s = { ':Telescope git_status<CR>', 'GIT_STATUS' },
    c = { ':term git commit<CR>', 'COMMIT' },
    a = { ':term git commit --amend<CR>', 'COMMIT_AMEND' },
    v = {
      function()
        git_api.gitMainCmd {
          add = true,
          commit = true,
        }
      end,
      'ADD_ALL+COMMIT',
    },
    p = {
      name = 'PUSH',
      p = {
        function()
          git_api.gitMainCmd {
            add = true,
            commit = true,
            ssh = true,
            remote_quest = true,
            pull_quest = true,
            push = true,
          }
        end,
        'ADD+COMMIT+SSH+PULL+PUSH',
      },
      P = {
        function()
          git_api.gitMainCmd {
            remote_quest = true,
            push = true,
          }
        end,
        'PUSH',
      },
      a = {
        function()
          vim.cmd(':term ' .. git_api.SSH_CMD() .. ' && git push --all<CR>')
        end,
        'PUSH ALL WITH SSH',
      },
      A = { ':term git push --all<CR>', 'PUSH ALL' },
      s = {
        function()
          git_api.gitMainCmd {
            push = true,
            remote_quest = true,
            pull_quest = true,
            ssh = true,
          }
        end,
        'SSH+PULL+PUSH',
      },
      S = {
        function()
          git_api.gitMainCmd {
            push = true,
            remote_quest = true,
            ssh = true,
          }
        end,
        'SSH+PUSH',
      },
    },
    P = {
      name = 'PULL',
      A = { ':term git pull --all<CR>', 'PULL ALL' },
      a = {
        function()
          vim.cmd(':term ' .. git_api.SSH_CMD() .. ' && git pull --all<CR>')
        end,
        'PULL ALL WITH SSH',
      },
      p = {
        function()
          git_api.gitMainCmd {
            remote_quest = true,
            pull = true,
          }
        end,
        'PULL THIS BRANCH',
      },
      P = {
        function()
          git_api.gitMainCmd {
            remote_quest = true,
            pull = true,
            ssh = true,
          }
        end,
        'PULL THIS BRANCH WITH SSH',
      },
    },
    o = {
      name = 'WITH TELESCOPE OPTS',
      p = { ':Telescope git_push<CR>', 'SSH+PUSH' },
      v = { ':Telescope git_commit_ssh_push<CR>', 'COMMIT+SSH+PULL+PUSH' },
      P = { ':Telescope git_pull<CR>', 'PULL' },
    },
    d = {
      name = 'DIFF_VIEW',
      o = { ':DiffviewOpen<CR>', 'DIFF_OPEN' },
      q = { ':DiffviewClose<CR>', 'DIFF_CLOSE' },
      t = { ':DiffviewFileHistory<CR>', 'FILE_HISTORY' },
      f = { require('telescope').extensions.git_diffs.diff_commits, 'FILE_HISTORY' },
    },
    B = { ':Gitsigns blame_line<CR>', 'BLAME_LINE' },
    C = {
      name = 'CONFLICT',
      l = { ':GitConflictListQf<CR>', 'LIST' },
      r = { ':GitConflictRefresh<CR>', 'REFRES' },
      n = { ':GitConflictNextConflict<CR>', 'NEXT' },
      p = { ':GitConflictPrevConflict<CR>', 'PREV' },
      t = { ':GitConflictChooseTheirs<CR>', 'CHOOSE_THEIR' },
      b = { ':GitConflictChooseBoth<CR>', 'CHOOSE_BOTH' },
      o = { ':GitConflictChooseOur<CR>', 'CHOOSE_OUR' },
      N = { ':GitConflictChooseNone<CR>', 'CHOOSE_NONE' },
    },
  },
}, { prefix = '<leader>g', noremap = true, mode = 'n', silent = true })
