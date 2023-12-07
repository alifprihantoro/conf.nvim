_G.MAP({
  d = {
    name = 'Debug',
    t = { ":lua require'dap'.toggle_breakpoint()<CR>", "Toggle Breakpoint" },
    c = { ":lua require'dap'.continue()<CR>", "Continue" },
    n = { ":lua require'dap'.step_over()<CR>", "Step Over" },
    p = { ":lua require'dap'.step_into()<CR>", "Step Into" },
    h = { ":lua require'dap.ui.widgets'.hover()<CR>", "Hover" },
    l = { ":lua require'osv'.launch({port = 8086})<CR>", "Launch" },
    u = { ":lua require('dapui').toggle()<CR>", "Toggle DAP UI" },
    r = { ":lua require'osv'.run_this()<CR>", "Run" },
    f = { ":lua require('dapui').float_element()<CR>", "Float Element" },
    e = { ":lua require('dapui').eval()<CR>", "Evaluate" },
  },
}, { prefix = "<leader><leader>", noremap = true, mode = 'n', silent = true })