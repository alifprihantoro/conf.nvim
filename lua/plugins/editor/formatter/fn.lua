local jsFam = require('plugins.editor.formatter.opts').jsFam

local cekIsFileTypeOnTableJsFam = function(fileType)
  for _, val in pairs(jsFam) do
    if fileType == val then
      return true
    end
  end
  return false
end
---@param isAuto boolean
return function(isAuto)
  local fileType = vim.bo.filetype
  if not cekIsFileTypeOnTableJsFam(fileType) then
    return require('conform').format()
  end
  local CONTENT_ARR = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  local CONTEN_STR = table.concat(CONTENT_ARR, '\n')
  local isStrContainHtmlTemplate = string.find(CONTEN_STR, 'html`')
  if not isStrContainHtmlTemplate then
    vim.lsp.buf.format()
    local eslintCmd = 'EslintFixAll'
    local success, output = pcall(vim.cmd, eslintCmd)
    if not success then
      print('Error executing command: ' .. output)
    end
    return
  end
  print(vim.inspect(isAuto))
  if isAuto == nil then
    return require('conform').format()
  end
end
