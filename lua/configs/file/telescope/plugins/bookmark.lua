local picker = require "configs.file.telescope.utils.picker"
local list_bookmark = require "configs.file.telescope.configs.bookmarks"

return function()
  local names = {}
  for k in pairs(list_bookmark) do
    table.insert(names, k)
  end
  local function callback(selection)
    vim.cmd('NvimTreeToggle ' .. list_bookmark[selection[1]])
  end

  picker({
    opts = names,
    callBack = callback
  })
end
