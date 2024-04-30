local lsp = vim.lsp.buf
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
  f = {
    name = 'TELESCOPE',
    l = { ':Telescope<CR>', 'LIST_ALL' },
    f = { ':Telescope find_files<CR>', 'FIND_FILE' },
    g = { ':Telescope live_grep<CR>', 'LIVE_GREP' },
    r = { ':Telescope grep_string<CR>', 'GREP_STRING' },
    b = { ':Telescope buffers<CR>', 'BUFFER' },
    h = { ':Telescope help_tags<CR>', 'HELP' },
    C = { ':Telescope command_history<CR>', 'CMD_HISTORY' },
    c = { ':Telescope commands<CR>', 'COMMAND' },
    w = { ':Telescope work_space<CR>', 'WORK_SPACE' },
    n = { ':Telescope notify<CR>', 'NOTIFY' },
    o = { ':Telescope oldfiles<CR>', 'RECENT_OPEN' },
    s = { ':Telescope symbols<CR>', 'SYMBOL' },
  },
  s = {
    name = '+SCREEN',
    l = { '<C-w>l', 'GO_RIGH_SCREEN' },
    d = { '<C-w>c', 'DELETE_CURRENT_SCREEN' },
    h = { '<C-w>h', 'GO_LEFT_SCREEN' },
    j = { '<C-w>j', 'GO_DOWN_SCREEN' },
    k = { '<C-w>k', 'GO_UP_SCREEN' },
    ['-'] = { '<C-w>s', 'SPLIT_HORIZONTAL' },
    [']'] = { '<C-w>>', 'SPLIT_LEFT' },
    ['['] = { '<C-w><', 'SPLIT_RIGHT' },
  },
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
    w = { _G.toggle.wrap, 'WORD_WRAP' },
    r = { _G.toggle.relativeNum, 'RELATIVE_LINE_NUMBERS' },
    n = { _G.toggle.lineNum, 'LINE_NUMBERS' },
    d = { _G.toggle.diagnostic, 'DIAGNOSTICS' },
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
  },
  d = {
    name = 'DELETE',
    a = { 'ggVG"_d', 'LINE' },
    w = { 'viw"_d', 'WORD' },
    W = { 'viW"_d', 'WORD_SYMBOL' },
  },
  l = {
    name = '+LSP',
    D = { lsp.declaration, 'DECLARATION' },
    I = { ':LspInfo<CR>', 'INFO' },
    g = { lsp.definition, 'GO_DEFINITION' },
    i = { lsp.implementation, 'IMPLEMENT' },
    h = { lsp.signature_help, 'HELP' },
    r = { lsp.rename, 'RENAME' },
    c = { lsp.code_action, 'CODE_ACTION' },
    R = { lsp.references, 'REFRENCE' },
    d = {
      name = '+DIAGNOSTIC',
      l = { ':Telescope diagnostics<CR>', 'LIST_TELESCOP' },
      ['nd'] = { _G.diagnostic_goto(true), 'NEXT_DIAGNOSTIC' },
      ['pd'] = { _G.diagnostic_goto(false), 'PREV_DIAGNOSTIC' },
      ['ne'] = { _G.diagnostic_goto(true, 'ERROR'), 'NEXT_ERROR' },
      ['pe'] = { _G.diagnostic_goto(false, 'ERROR'), 'PREV_ERROR' },
      ['nw'] = { _G.diagnostic_goto(true, 'WARN'), 'NEXT_WARNING' },
      ['pw'] = { _G.diagnostic_goto(false, 'WARN'), 'PREV_WARNING' },
    },
    w = {
      name = '+WORKSPACE',
      a = { lsp.add_workspace_folder, 'ADD' },
      r = { lsp.remove_workspace_folder, 'REMOVE' },
      p = {
        function()
          print(vim.inspect(lsp.list_workspace_folders()))
        end,
        'PRINT_LIST',
      },
    },
  },
}, { prefix = '<leader>', noremap = true, mode = 'n', silent = true })

_G.MAP({
  x = { '"+', 'CUT' },
  y = { '"+y', 'COPY' },
  d = { '"_d', 'DELETE' },
  r = { ':s/', 'REPLACE', silent = false },
}, { prefix = '<leader>', noremap = true, mode = 'v' })
