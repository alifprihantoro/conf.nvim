-- vim.cmd("autocmd!")
local set          = vim.opt
set.swapfile       = false
set.background     = 'dark'
set.compatible     = false
vim.scriptencoding = 'utf-8'
set.encoding       = 'utf-8'
set.fileencoding   = 'utf-8'
vim.wo.number      = true
set.title          = true
set.autoindent     = true
set.smartindent    = true
set.hlsearch       = true
set.backup         = false
set.showcmd        = true
set.showtabline    = 0
set.cmdheight      = 0
set.laststatus     = 0
set.expandtab      = true
set.scrolloff      = 10
set.shell          = 'zsh'
set.backupskip     = { '/tmp/*', '/private/tmp/*' }
set.inccommand     = 'split'
set.ignorecase     = true -- Case insensitive searching UNLESS /C or capital in search
set.smarttab       = true
set.breakindent    = true
set.shiftwidth     = 2
set.tabstop        = 2
set.wrap           = false -- No Wrap lines
set.backspace      = { 'start', 'eol', 'indent' }
set.wildignore:append { '*/node_modules/*' }
-- enable line and column display
set.ruler         = true
-- scroll a bit horizontally when at the end of the line
set.sidescroll    = 6
-- Make it easier to work with buffers
-- http://vim.wikia.com/wiki/Easier_buffer_switching
set.hidden        = true
set.confirm       = true
-- open new split panes to right and below (as you probably expect)
set.splitright    = true
set.splitbelow    = true
vim.o.lazyredraw  = false
-- set.concealcursor = 'i'
set.conceallevel = 1

vim.cmd [[
  " =====================================
  " Initial settings
  " =====================================
  set go+=a
  "Disable beep / flash
  set vb t_vb=
  set mouse=a

  " replace tab with spaces
  " allow cursor to move to beginning of tab
  " will interfere with soft line wrapping (set nolist)
  set list lcs=tab:\ \

  set wildmenu wildmode=full

  " init autocmd
  autocmd!

  " set showmatch
  " How many tenths of a second to blink when matching brackets
  set mat=2
  " file type recognition
  filetype on
  filetype plugin on
  "-------------------------------------------------------------------------------
  " Cursor line
  "-------------------------------------------------------------------------------

  set cursorline
  set cursorcolumn

  " syntax highlight
  syntax on
  au BufEnter *.html set syntax=html
  au BufEnter *.mdx set filetype=markdown.mdx
]]
vim.cmd [[
autocmd TermOpen * setlocal nonumber norelativenumber
autocmd TermOpen term://* startinsert
]] ---disable number on terminal