local lsp = vim.lsp.buf
local opts = { prefix = '', noremap = true, mode = 'n', silent = true }
_G.MAP({
  K = { lsp.hover, '' },
  ['<C-f>'] = { function() lsp.format { async = true } end, '' },
  ['<c-d>'] = { ':LspDiagnosticOpenFloat<CR>', '' },
  ['<c-S>'] = { function() vim.cmd('wa') end, "SAVE_ALL" },
  ['<c-s>'] = { function() vim.cmd('w') end, "SAVE" },
  ['gD'] = {
    function()
      local current_word = vim.fn.expand '<cWORD>' ---@type string
      vim.cmd('/' .. current_word)
    end,
    'SEARCH_WORD_SYMBOL'
  },
  [';'] = { ':', 'CMD', mode = 'n', silent = false },
  ['<C-k>'] = { '10k', 'SCROLL_UP', mode = { 'n', 'v' } },
  ['<C-j>'] = { '10j', 'SCROLL_DOWN', mode = { 'n', 'v' } },
  ['<C-l>'] = { '20zl', 'SCROLL_LEFT', mode = { 'n', 'v' } },
  ['<C-h>'] = { '20zh', 'SCROLL_RIGH', mode = { 'n', 'v' } },
  ['ya'] = { 'ggVGy', 'COPY_ALL' },
  ['da'] = { 'ggVGd', 'CUT_ALL' },
  ['<BS>'] = { 'v"_d', 'BACKSPACE' },
  ['<C-p>'] = { '"+p', 'PASTE_CLIPBOARD' },
  ['<Del>'] = { 'v"_d', 'DELETE' },
}, opts)

_G.MAP({
  ['<BS>'] = { '"_d', 'BACKSPACE', mode = { 'v' } },
  ['<Del>'] = { '"_d', 'DELETE', mode = { 'v' } },
}, opts)