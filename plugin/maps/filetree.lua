local key = vim.keymap.set
local opts = { silent = true }
_G.TreeOpenNow = function()
  local pwd = vim.api.nvim_command_output('echo system("pwd")')
  vim.cmd("NvimTreeOpen " .. pwd)
end

-- FILE TREE
key('n', '<leader>ee', ':NvimTreeToggle<CR>', opts)
key('n', '<leader>eg',
  ":exec 'NvimTreeOpen' fnameescape(fnamemodify(finddir('.git', escape(expand('%:p:h'), ' ') . ';'), ':h'))<CR>", opts)
key('n', '<leader>ef', ":NvimTreeFindFileToggle %:h<CR>", opts)
key('n', '<leader>en',":lua _G.TreeOpenNow()<CR>" , opts)
key('n', '<leader>eq', ":NvimTreeClose<CR>", opts)
