return function()
  local EXT = { "lua", "astro" } -- define ext for lsp
  local GET_PATH_NOW = vim.fn.expand('%:e')
  for i, value in ipairs(EXT) do
    if value == GET_PATH_NOW then
      TOGGLE_SERVER_LSP = true
    end
  end
end
