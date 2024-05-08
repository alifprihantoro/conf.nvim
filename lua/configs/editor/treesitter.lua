local status, ts = pcall(require, 'nvim-treesitter.configs')
if not status then
  return
end
ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  auto_install = true,
  modules = {},
  sync_install = true,
  ignore_install = {},
  ensure_installed = {
    'tsx',
    'toml',
    'php',
    'phpdoc',
    'yaml',
    'swift',
    'css',
    'html',
    'lua',
    'javascript',
    'jsdoc',
    'json',
    'typescript',
    'astro',
    'bash',
    'rust',
    'python',
    'markdown',
    'markdown_inline',
    'go',
    'gomod',
    'regex',
    'http',
    'gitcommit',
    'gitignore',
    'git_config',
    'git_rebase',
    'gitattributes',
    'prisma',
  },
  autotag = {
    enable_rename = true,
    enable_close = true,
    enable_close_on_slash = true,
    enable = true,
    filetypes = {
      'html',
      'xml',
      'astro',
      'javascriptreact',
      'typescriptreact',
      'javascript',
      'typescript',
      'markdown',
      'php',
    },
  },
  ts_context_commentstring = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'gnN',
      scope_incremental = 'gnc',
      node_decremental = 'gnm',
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['fa'] = '@function.outer',
        ['fi'] = '@function.inner',
        ['ca'] = '@class.outer',
        ['ci'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
      goto_next = {
        [']d'] = '@conditional.outer',
      },
      goto_previous = {
        ['[d'] = '@conditional.outer',
      },
    },
    goto_next_start = {
      [']m'] = '@function.outer',
      [']]'] = { query = '@class.outer', desc = 'Next class start' },
      --
      -- You can use regex matching (i.e. lua pattern) and/or pass a list in a "query" key to group multiple queires.
      [']o'] = '@loop.*',
      -- ["]o"] = { query = { "@loop.inner", "@loop.outer" } }
      --
      -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
      -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
      [']s'] = { query = '@scope', query_group = 'locals', desc = 'Next scope' },
      [']z'] = { query = '@fold', query_group = 'folds', desc = 'Next fold' },
    },
  },
}

local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.tsx.filetype_to_parsername = { 'javascript', 'typescript.tsx', 'typescript' }
