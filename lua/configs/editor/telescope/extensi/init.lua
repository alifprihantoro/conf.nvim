-- local plug      = require('telescope.builtin')
-- local workspace = require('muryp-bookmark')
-- workspace.setup({
--     list = {
--       muryp = "~/web/muryp",
--       vim = "~/.config/nvim",
--     },
--     option = {
--       treeOpen = 'lua _G.TreeOpenNow()',
--       telescope = 'Telescope find_files'
--     }
--   })

require('telescope').load_extension 'notify'
-- require('nvim-muryp-git').resgisterTelescope()
-- plug.work_space = workspace.picker
