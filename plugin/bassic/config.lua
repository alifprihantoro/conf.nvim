-- vim.cmd("autocmd!")

local set=vim.opt
set.swapfile=false
set.background='dark'
set.compatible=false
vim.scriptencoding = 'utf-8'
set.encoding = 'utf-8'
set.fileencoding ='utf-8'
vim.wo.number = true
set.title = true
set.autoindent = true
set.smartindent = true
set.hlsearch = true
set.backup = false
set.showcmd = true
set.showtabline = 0
set.cmdheight = 1
set.laststatus = 2
set.expandtab = true
set.scrolloff = 10
set.shell = 'zsh'
set.backupskip = { '/tmp/*', '/private/tmp/*' }
set.inccommand = 'split'
set.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
set.smarttab = true
set.breakindent = true
set.shiftwidth = 2
set.tabstop = 2
set.wrap = false -- No Wrap lines
set.backspace = { 'start', 'eol', 'indent' }
set.wildignore:append { '*/node_modules/*' }
-- enable line and column display
set.ruler=true
-- scroll a bit horizontally when at the end of the line
set.sidescroll=6
-- Make it easier to work with buffers
-- http://vim.wikia.com/wiki/Easier_buffer_switching
set.hidden=true
set.confirm=true
-- open new split panes to right and below (as you probably expect)
set.splitright=true
set.splitbelow=true
