local isWk, wk = pcall(require, 'which-key')

-- Buat sebuah table untuk menampung daftar key mapping
local mappings = {
  { "dt", ":lua require'dap'.toggle_breakpoint()<CR>",   "Toggle Breakpoint" },
  { "dc", ":lua require'dap'.continue()<CR>",            "Continue" },
  { "dn", ":lua require'dap'.step_over()<CR>",           "Step Over" },
  { "dp", ":lua require'dap'.step_into()<CR>",           "Step Into" },
  { "dh", ":lua require'dap.ui.widgets'.hover()<CR>",    "Hover" },
  { "dl", ":lua require'osv'.launch({port = 8086})<CR>", "Launch" },
  { "du", ":lua require('dapui').toggle()<CR>",          "Toggle DAP UI" },
  { "dr", ":lua require'osv'.run_this()<CR>",            "Run" },
  { "df", ":lua require('dapui').float_element()<CR>",   "Float Element" },
  { "de", ":lua require('dapui').eval()<CR>",            "Evaluate" },
}

-- Jika wich-key tersedia, daftarkan deskripsi aksi
-- Daftarkan key mapping
for _, mapping in ipairs(mappings) do
  vim.api.nvim_set_keymap('n', '<leader><leader>' .. mapping[1], mapping[2], { noremap = true })
end
if isWk then
  -- Tambahkan deskripsi aksi untuk setiap key mapping
  local wk_mappings = {}
  for _, mapping in ipairs(mappings) do
    wk_mappings[mapping[1]] = { mapping[2], mapping[3] }
  end
  wk.register(wk_mappings, { prefix = '<leader><leader>' })
  wk.setup()
end
