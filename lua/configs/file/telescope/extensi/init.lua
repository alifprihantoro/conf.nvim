local plug      = require('telescope.builtin')
local workspace = require('muryp-bookmark')
workspace.setup({
    list = {
      muryp = "~/web/muryp",
      vim = "~/.config/nvim",
    },
    option = {
      treeOpen = 'lua _G.TreeOpenNow()',
      telescope = 'Telescope find_files'
    }
  })

require('nvim-muryp-git').resgisterTelescope()
require("telescope").load_extension("notify")
plug.work_space = workspace.picker
