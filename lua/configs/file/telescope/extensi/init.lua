local plug = require('telescope.builtin')
local gitFlow = require('configs.file.telescope.extensi.gitFlow')
local bookmark = require('configs.file.telescope.extensi.bookmark')

plug.git_flow = gitFlow
plug.bookmark = bookmark
