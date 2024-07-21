local GH_ISSUE = ':GhIssue '
local git_api = require 'muryp-git.api'

_G.MAP({
  name = '+GIT(VCS)',
  h = {
    name = '+GH_CLI',
    i = {
      name = '+GH_ISSUE',
      cf = { ':Telescope gh_issue_cache<CR>', 'LIST_ISSUE_ON_CACHE_FILE' },
      cr = { ':Telescope gh_issue_cache_rg<CR>', 'LIST_ISSUE_ON_CACHE_RG' },
      i = { ':Telescope gh_issue<CR>', 'EDIT_ISSUE' },
      o = {
        name = '+GET_ISSUE_BY_NUM',
        o = { GH_ISSUE .. 'getByNum true<CR>', 'online' },
        c = { GH_ISSUE .. 'getByNum false<CR>', 'offline' },
      },
      a = { ':term gh issue create<CR>', 'ADD_ISSUE' },
      s = { GH_ISSUE .. 'push<CR>', 'SYNC_LOCAL_TO_GH' },
      S = { GH_ISSUE .. 'update<CR>', 'SYNC_GH_TO_LOCAL' },
      e = { GH_ISSUE .. 'edit<CR>', 'EDIT' },
      d = { GH_ISSUE .. 'rm<CR>', 'DELETE' },
      p = { GH_ISSUE .. 'pin<CR>', 'pin' },
      P = { GH_ISSUE .. 'unpin<CR>', 'unpin' },
      l = { GH_ISSUE .. 'lock<CR>', 'lock' },
      L = { GH_ISSUE .. 'unlock<CR>', 'unlock' },
      r = { GH_ISSUE .. 'reopen<CR>', 'reopen' },
      C = { GH_ISSUE .. 'closed<CR>', 'closed' },
    },
  },
  g = {
    name = 'GIT',
    b = { ':Telescope git_branches<CR>', 'BRANCH' },
    g = { ':term grb', 'BRANCH' },
    f = {
      name = 'FLOW',
      r = {
        function()
          git_api.flow { isRebase = true }
        end,
        'FLOW_REBASE',
      },
      m = {
        function()
          git_api.flow { isMerge = true }
        end,
        'FLOW_REBASE',
      },
    },
    s = { ':Telescope git_status<CR>', 'GIT_STATUS' },
    c = { ':term git commit<CR>', 'COMMIT' },
    a = { ':term git commit --amend<CR>', 'COMMIT_AMEND' },
    v = {
      function()
        git_api.commit { isAddAll = true }
      end,
      'ADD_ALL+COMMIT',
    },
    p = {
      name = 'PUSH',
      a = {
        function()
          git_api.push {
            isUseSsh = true,
            isPull = true,
            isCommit = true,
            isAddAll = true,
          }
        end,
        'WITH_ALL',
      },
      c = {
        function()
          git_api.push {
            isUseSsh = true,
            isCommit = true,
          }
        end,
        'WITH_COMMIT',
      },
      p = {
        function()
          git_api.push {
            isUseSsh = true,
          }
        end,
        'PUSH',
      },
      r = {
        function()
          git_api.push {
            isUseSsh = true,
            isPull = true,
            isCommit = true,
          }
        end,
        'WITH_PULL',
      },
    },
    P = {
      function()
        git_api.pull {
          isUseSsh = true,
        }
      end,
      'PULL',
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
    o = {
      function()
        git_api.open()
      end,
      'OPEN',
    },
  },
}, { prefix = '<leader>g', noremap = true, mode = 'n', silent = true })
