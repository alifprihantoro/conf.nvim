local key = vim.keymap.set
local opts = {silent = true, noremap = true, replace_keycodes = false, buffer = true}

return function()
  key("n","<leader>'",":VimwikiToggleListItem<CR>",opts)
  key("n","<leader>vs",":VimwikiListChangeSymbolI",opts)
  key("v","<Space>vs",":VimwikiListChangeSymbolI",opts)
  key("v","<leader>'",":VimwikiToggleListItem<CR>",opts)
  vim.cmd [[
    set filetype=markdown
    syntax match CheckListNotClear /^.*\[\ \]\(\s\|\w\|\:\)*/
    syntax match CheckListClearTitle /^.*\[\(\ \|\*\)\@!\]\(\s\|\w\|\:\)*/
    syntax match CheckListClear /^.*- \[x\].*/
    syntax match CheckListClearHalf /^.*- \[\(○\|\.\)\].*/
    syntax match LinkHttp /\(http[s]\?:\/\/[[:alnum:]%\/_#.-]*\)/
    hi CheckListClear guibg=none guifg=gray50
    hi CheckListClearHalf guibg=none guifg=orange
    hi CheckListNotClear guibg=none guifg=lightgreen
    hi CheckListClearTitle guibg=blue
    hi LinkHttp gui=underline
  ]]
end
