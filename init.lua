-- require('impatient') -- for cache to load fast
-- vim.defer_fn(function()
--   pcall(require, "impatient")
-- end, 0)
vim.g.mapleader = " "
require('configs.editor.wiki.before')
require('core.serverScwich')
require('plugin')

require('configs.helper.wichKey')

require("which-key").register({
  e = {
    name = "FILE_TREE",
    e    = { ':Neotree toggle<CR>', "TOGGLE" },
    g    = {
      ":exec 'Neotree' fnameescape(fnamemodify(finddir('.git', escape(expand('%:p:h'), ' ') . ';'), ':h'))<CR>",
      "GIT_DIR"
    },
    f    = { ":Neotree %:h<CR>", "FILE" },
    n    = { ":lua _G.TreeOpenNow()<CR>", "PWD" },
    q    = { ":Neotree close<CR>", "QUIT" },
  },
}, { prefix = "<leader>" })
-- require('configs.style.lualine')
-- require('configs.helper.wichKey')
