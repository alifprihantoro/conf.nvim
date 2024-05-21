local lsp = require 'lspconfig'

local runtime_path = vim.split(package.path, ';')

local CONFIGS_DIR = vim.fn.stdpath 'config' .. '/lazy'

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

local LIST_DIR = {}
local EXCLUDE_FILE = {}
for _, file in ipairs(getFiles(CONFIGS_DIR)) do
  if not vim.tbl_contains(EXCLUDE_FILE, file) then
    table.insert(LIST_DIR, string.format('%s/%s', CONFIGS_DIR, file))
  end
end

_G.LIST_DIR_LUA = LIST_DIR

lsp.luau_lsp.setup {} --- lua
lsp.lua_ls.setup {
  single_file_support = true,
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = runtime_path,
      },
      completion = {
        callSnippet = 'replace',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      ['hint.enable'] = true,
      workspace = {
        library = LIST_DIR,
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
