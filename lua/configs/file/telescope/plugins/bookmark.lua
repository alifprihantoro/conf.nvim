local picker   = require "configs.file.telescope.utils.picker"
local opts     = require "configs.file.telescope.configs.bookmarks"
local getNames = require "configs.file.telescope.utils.getNames"

return function()
  local names = getNames(opts.list_bookmark)
  local function callback(selection)
    local opts_names = getNames(opts.option)
    picker({
      opts = opts_names,
      callBack = function(selection2)
        vim.cmd('cd ' .. opts.list_bookmark[selection[1]])
        vim.cmd('execute "' .. opts.option[selection2[1]] .. '"')
      end
    })
  end

  picker({
    opts = names,
    callBack = callback
  })
end
