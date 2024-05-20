local lsp = require 'lspconfig'

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/init.lua')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/?.lua')

local CONFIGS_DIR = vim.fn.stdpath 'config' .. '/lazy'

lsp.luau_lsp.setup {} --- lua
lsp.lua_ls.setup {
  single_file_support = true,
  flags = {
    debounce_text_changes = 150,
  },
  -- capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        path = runtime_path,
      },
      completion = {
        callSnippet = 'replace',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      ['hint.enable'] = true,
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          CONFIGS_DIR,
        },
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
