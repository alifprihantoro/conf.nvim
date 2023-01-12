local key = vim.keymap.set
local opts = { silent = true }
-- FILE TREE
key('n', '<leader>ee', ':NvimTreeOpen<CR>', opts)
key('n', '<leader>eg',
  ":exec 'NvimTreeOpen' fnameescape(fnamemodify(finddir('.git', escape(expand('%:p:h'), ' ') . ';'), ':h'))<CR>", opts)
key('n', '<leader>ef', ":NvimTreeFindFileToggle %:h<CR>", opts)
key('n', '<leader>en', function()
  local pwd = vim.api.nvim_command_output('echo system("pwd")')
  vim.cmd("NvimTreeOpen " .. pwd)
end, opts)
key('n', '<leader>eq', ":NvimTreeClose<CR>", opts)
