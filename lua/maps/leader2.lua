_G.MAP({
  name = '+MORE',
  -- d = {
  --   name = 'Debug',
  --   t = { ":lua require'dap'.toggle_breakpoint()<CR>", 'Toggle Breakpoint' },
  --   c = { ":lua require'dap'.continue()<CR>", 'Continue' },
  --   n = { ":lua require'dap'.step_over()<CR>", 'Step Over' },
  --   p = { ":lua require'dap'.step_into()<CR>", 'Step Into' },
  --   h = { ":lua require'dap.ui.widgets'.hover()<CR>", 'Hover' },
  --   l = { ":lua require'osv'.launch({port = 8086})<CR>", 'Launch' },
  --   u = { ":lua require('dapui').toggle()<CR>", 'Toggle DAP UI' },
  --   r = { ":lua require'osv'.run_this()<CR>", 'Run' },
  --   f = { ":lua require('dapui').float_element()<CR>", 'Float Element' },
  --   e = { ":lua require('dapui').eval()<CR>", 'Evaluate' },
  -- },
  e = { ':Neotree focus %<CR>', 'File FOCUS' },
  w = {
    function()
      vim.cmd 'wa'
    end,
    'SAVE_ALL',
  },
  d = {
    name = 'DIR',
    n = { ':Cdn<CR><CR>', 'GOTO_CURR_FILE' },
    g = { ':Cdg<CR><CR>', 'GOTO_ROOT_GIT' },
    a = {
      function()
        require('muryp-file').addDir()
      end,
      'ADD_BOOKMARK',
    },
    r = {
      function()
        require('muryp-file').rmDir()
      end,
      'RM_BOOKMARK',
    },
  },
  l = { ':lua require("lazy").home()<CR>', 'LAZY_HOME' },
  i = {
    name = '+INFO',
    l = { ':LspInfo<CR>', 'LSP' },
    w = { ':WhichKey<CR>', 'WICHKEY' },
    f = { ':ConformInfo<CR>', 'FORMATTER' },
    p = { ':Lazy<CR>', 'PLUGIN_LAZY' },
    c = { ':CmpStatus<CR>', 'COMPLETION_STATUS' },
  },
}, { prefix = '<leader><leader>', noremap = true, mode = 'n', silent = true })
