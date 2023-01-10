local plug = require('telescope.builtin')
local gitFlow = require "configs.file.telescope.plugins.gitFlow"

plug.git_flow = gitFlow
