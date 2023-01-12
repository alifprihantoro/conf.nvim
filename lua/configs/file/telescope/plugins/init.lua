local plug = require('telescope.builtin')
local gitFlow = require "configs.file.telescope.plugins.gitFlow"
local bookmark = require "configs.file.telescope.plugins.bookmark"

plug.git_flow = gitFlow
plug.bookmark = bookmark
