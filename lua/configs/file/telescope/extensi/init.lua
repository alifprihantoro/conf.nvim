local plug     = require('telescope.builtin')
local gitFlow  = require('configs.file.telescope.extensi.gitFlow')
local bookmark = require('configs.file.telescope.extensi.bookmark')
local gh       = require('configs.file.telescope.extensi.gh')

plug.git_flow = gitFlow
plug.bookmark = bookmark
plug.git_issue = gh
