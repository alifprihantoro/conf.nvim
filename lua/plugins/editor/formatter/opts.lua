local M = {}
M.formatter_list = {
  lua = { 'stylua' },
  fish = { 'fish_indent' },
  sh = { 'shfmt' },
  astro = { 'astro' },
}

local addFormatter = function(listLang, formatter)
  for _, val in pairs(listLang) do
    M.formatter_list[val] = formatter
  end
end

M.jsFam = {
  'javascript',
  'javascriptreact',
  'typescript',
  'typescriptreact',
  'typescriptreact',
}
addFormatter(M.jsFam, { 'prettierd' })
addFormatter({
  'html',
  'css',
  'scss',
  'markdown',
}, { 'prettierd' })

return M
