local key = vim.keymap.set
local opts = { silent = true }
-- FILE TREE
key('n', '<C-E>', ':NvimTreeToggle<CR>',opts)
key('n', '<leader>ee', ':NvimTreeOpen<CR>',opts)
key('n', '<leader>eg',
  ":exec 'NvimTreeOpen' fnameescape(fnamemodify(finddir('.git', escape(expand('%:p:h'), ' ') . ';'), ':h'))<CR>",opts)
key('n', '<leader>en', ":NvimTreeFindFileToggle %:h<CR>",opts)
key('n', '<leader>eq', ":NvimTreeClose<CR>",opts)
