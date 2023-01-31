local plug     = require('telescope.builtin')
local workspace = require('configs.file.telescope.extensi.workspace')

plug.work_space = workspace
require('nvim-muryp-git').resgisterTelescope()
