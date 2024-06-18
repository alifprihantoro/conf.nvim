local configPath = vim.fn.stdpath 'config'
_G.IMPORT_FOLDER = function(OPTS)
  local include = OPTS.include ---@type string[]
  local exclude = OPTS.exclude or { '' } ---@type string[]
  local isReturn = OPTS.isReturn ---@type boolean
  local RETURN_VAL = {}
  for _, file in pairs(vim.api.nvim_get_runtime_file('lua/' .. include .. '/**/*.lua', true)) do
    local FIRST_PATH = '^' .. configPath .. '/lua/(.*)'
    local isExclude = false
    for _, item in ipairs(exclude) do
      if item == file then
        isExclude = true
        break
      end
    end
    if not isExclude then
      if string.find(file, '/init.lua') then
        local result = string.gsub(file, FIRST_PATH .. '/init.lua', '%1'):gsub('/', '.')
        if isReturn then
          table.insert(RETURN_VAL, require(result))
        else
          require(result)
        end
      else
        local result = string.gsub(file, FIRST_PATH .. '.lua', '%1'):gsub('/', '.')
        if isReturn then
          table.insert(RETURN_VAL, require(result))
        else
          require(result)
        end
      end
    end
  end
  return RETURN_VAL
end
