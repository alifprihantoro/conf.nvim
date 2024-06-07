local lsp = vim.lsp.buf
local opts = { prefix = '', noremap = true, mode = 'n', silent = true }
_G.MAP({
  K = { lsp.hover, '' },
  ['<Esc>'] = { ':noh<CR>' },
  ['<c-d>'] = { vim.diagnostic.open_float, 'DIAGNOSTIC_OPEN_FLOAT' },
  ['<c-S>'] = {
    function()
      vim.cmd 'wa'
    end,
    'SAVE_ALL',
  },
  ['<c-s>'] = {
    function()
      vim.cmd 'w'
    end,
    'SAVE',
  },
  f = {
    name = '+TELESCOPE',
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
  g = {
    name = '+goto',
    -- WARNING:    v is uses
    o = { require('telescope.builtin').lsp_definitions, 'LSP_GO_DEFINITION' },
    i = { lsp.code_action, 'LSP_IMPLEMENT' },
    I = { require('telescope.builtin').lsp_implementations, 'LSP_IMPLEMENT' },
    r = {
      function()
        local get_current_word = vim.fn.expand '<cword>' ---@type string
        local userInput = vim.fn.input('Rename to: ', get_current_word)
        if userInput == '' then
          return
        end
        lsp.rename(userInput)
      end,
      'LSP_RENAME_VAR',
    },
    O = { lsp.definition, 'LSP_GO_DEFINITION' },
    D = {
      function()
        local current_word = vim.fn.expand '<cWORD>' ---@type string
        vim.cmd('/' .. current_word)
      end,
      'SEARCH_WORD_SYMBOL',
    },
    n = {
      d = { _G.diagnostic_goto(true), 'NEXT_DIAGNOSTIC' },
      e = { _G.diagnostic_goto(true, 'ERROR'), 'NEXT_DIAGNOSTIC_ERR' },
      w = { _G.diagnostic_goto(true, 'WARN'), 'NEXT_DIAGNOSTIC_WARN' },
      i = { ':cnext<CR>', 'LSP_NEXT_REFRENCE' },
    },
    p = {
      d = { _G.diagnostic_goto(false), 'PREV_DIAGNOSTIC' },
      e = { _G.diagnostic_goto(false, 'ERROR'), 'PREV_DIAGNOSTIC_ERR' },
      w = { _G.diagnostic_goto(false, 'WARN'), 'PREV_DIAGNOSTIC_WARN' },
      i = { ':cprevious<CR>', 'LSP_PREV_REFRENCE' },
    },
  },
  [';'] = { ':', 'CMD', mode = 'n', silent = false },
  ['<C-k>'] = { '10k', 'SCROLL_UP', mode = { 'n', 'v' } },
  ['<C-j>'] = { '10j', 'SCROLL_DOWN', mode = { 'n', 'v' } },
  ['<C-l>'] = { '20zl', 'SCROLL_LEFT', mode = { 'n', 'v' } },
  ['<C-h>'] = { '20zh', 'SCROLL_RIGH', mode = { 'n', 'v' } },
  y = {
    name = 'YANK+',
    a = { 'ggVGy', 'ALL' },
    p = { 'v%y', 'PAIR' },
    P = { 'v%"+y', 'PAIR_CLIPBOARD' },
    g = { 'gvy', 'INIT_SELECT' },
  },
  d = {
    name = 'CUT+',
    a = { 'ggVGd', 'ALL' },
    p = { 'v%d', 'PAIR' },
    P = { 'v%"+d', 'PAIR_CLIPBOARD' },
    g = { 'gvd', 'INIT_SELECT' },
  },
  ['da'] = { 'ggVGd', 'CUT_ALL' },
  ['<BS>'] = { 'v"_d', 'BACKSPACE' },
  ['<C-p>'] = { '"+p', 'PASTE_CLIPBOARD' },
  ['<Del>'] = { 'v"_d', 'DELETE' },
}, opts)

_G.MAP({
  ['<BS>'] = { '"_d', 'BACKSPACE', mode = { 'v' } },
  ['<Del>'] = { '"_d', 'DELETE', mode = { 'v' } },
  ['<C-p>'] = { 'd"+P', 'PASTE_CLIPBOARD', mode = { 'v' } },
}, opts)
