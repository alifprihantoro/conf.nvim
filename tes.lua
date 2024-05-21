-- get list file from folder ./lazy with outpu table. used like ls.

local function getFiles(dir)
  local files = vim.fn.readdir(dir)
  local output = {}
  for _, file in ipairs(files) do
    if file ~= '.' and file ~= '..' then
      table.insert(output, file)
    end
  end
  return output
end
print(vim.inspect(getFiles './lazy'))
