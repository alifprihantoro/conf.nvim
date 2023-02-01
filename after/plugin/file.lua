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
