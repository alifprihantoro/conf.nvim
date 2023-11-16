vim.cmd.colorscheme 'embark'
vim.cmd [[
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  hi Normal guibg=gray7
  hi CursorColumn guibg=gray15
  hi CursorLine guibg=gray15
  hi MatchParen guibg=gray15
  hi LineNr guibg=gray15 guifg=#585273
  hi Search guibg=#d4bfff
  hi GitSignsAddPreview guibg=gray15
  hi GitSignsDeletePreview guifg=gray guibg=#301e30
  hi Visual guibg=#391e9c
]]
-- hi Pmenu guibg=gray15
-- hi PmenuSel guibg=gray1
-- hi CocMenuSel guibg=gray1
