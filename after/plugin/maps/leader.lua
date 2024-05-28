local opts = vim.wo
_G.MAP({
  e = { ':Neotree toggle<CR>', 'File Toggle' },
  E = { ':Neotree focus %<CR>', 'File FOCUS' },
  i = { '^', 'FIRST_COL', mode = { 'n', 'v' } },
  a = { '$', 'LAST_COL', mode = { 'n', 'v' } },
  r = { ':%s /', 'REPLACE', silent = false },
  u = { '<C-^>', 'TOGGLE_CHANGE_BUF' },
  c = { ':e $MYVIMRC | Cdn<CR>', 'GOTO_NVIM_CONF' },
  q = { ':q<CR>', 'QUIT' },
  W = {
    function()
      vim.cmd 'wa'
    end,
    'SAVE_ALL',
  },
  w = {
    function()
      vim.cmd 'w'
    end,
    'SAVE',
  },
  ['<Del>'] = { 'V"_d', 'DELETE_LINE' },
  ['<BS>'] = { 'V"_d', 'DELETE_LINE' },
  b = {
    name = '+BUFFER',
    f = { ':bfirst<CR>', 'FIRST' },
    l = { ':blast<CR>', 'LAST' },
    d = { ':bd<CR>', 'DELETE' },
    a = { ':Bufonly<CR>', 'DELETE_ALL_WITHOUT_CURRENT' },
    A = { ':bufdo bd<CR>', 'DELETE_ALL' },
    p = { ':bp<CR>', 'PREV_BUF' },
    n = { ':bn<CR>', 'NEXT_BUF' },
  },
  D = {
    name = 'DIR',
    n = { ':Cdn<CR><CR>', 'DIR_BY_CURRENT_FILE' },
    g = { ':Cdg<CR><CR>', 'DIR_BY_CURRENT_DOT_GIT' },
  },
  x = {
    name = '+CUT',
    d = { 'bve"+d', 'LINE' },
    a = { 'ggVG"+d', 'ALL' },
    w = { 'viw"+d', 'WORD' },
    W = { 'viW"+d', 'WORD_SYMBOL' },
  },
  y = {
    name = 'CP_CLIPBOARD',
    y = { 'V"+y', 'LINE' },
    w = { 'viw"+y', 'WORD' },
    W = { 'viW"+y', 'WORD_SYMBOL' },
    a = { 'ggVG"+y', 'ALL' },
  },
  L = { ':lua require("lazy").home()<CR>', 'LAZY_HOME' },
  t = {
    name = '+TOGGLE',
    l = { ':LualineToggle<CR>', 'LUALINE' },
    c = { ':CodeiumToggle<CR>', 'CODEIUM' },
    h = {
      function()
        return vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
      end,
      'HINT_LSP',
    },
    w = {
      function()
        opts.wrap = not opts.wrap
      end,
      'WORD_WRAP',
    },
    r = {
      function()
        opts.relativenumber = not opts.relativenumber
      end,
      'RELATIVE_LINE_NUMBERS',
    },
    n = {
      function()
        opts.number = not opts.number
      end,
      'LINE_NUMBERS',
    },
    d = {
      function()
        return vim.diagnostic.enable(not vim.diagnostic.is_enabled())
      end,
      'DIAGNOSTICS',
    },
    t = {
      function()
        if vim.b.ts_highlight then
          vim.treesitter.stop()
        else
          vim.treesitter.start()
        end
      end,
      'TREESITTER_HIGHLIGHT',
    },
    f = {
      function()
        _G.FORMATTER_ACTIVE = not _G.FORMATTER_ACTIVE
      end,
      'FORMATTER',
    },
  },
  d = {
    name = 'DELETE',
    a = { 'ggVG"_d', 'LINE' },
    w = { 'viw"_d', 'WORD' },
    W = { 'viW"_d', 'WORD_SYMBOL' },
  },
  I = {
    name = '+INFO',
    l = { ':LspInfo<CR>', 'LSP' },
    w = { ':WhichKey<CR>', 'WICHKEY' },
    f = { ':ConformInfo<CR>', 'FORMATTER' },
    p = { ':Lazy<CR>', 'PLUGIN_LAZY' },
  },
}, { prefix = '<leader>', noremap = true, mode = 'n', silent = true })

_G.MAP({
  x = { '"+', 'CUT' },
  y = { '"+y', 'COPY' },
  d = { '"_d', 'DELETE' },
  r = { ':s/', 'REPLACE', silent = false },
}, { prefix = '<leader>', noremap = true, mode = 'v' })
