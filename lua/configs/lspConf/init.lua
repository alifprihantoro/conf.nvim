require('configs.lspConf.maps.default')
require('configs.lspConf.servers')
require('configs.lspConf.maps.custom')()
-- require('configs.lspConf.ui')

-- thi for if docs hover
local ErrHove = { 'typescript', 'typescriptreact', 'astro', 'javascript', 'javascriptreact', 'scss', 'css' }
vim.lsp.handlers['textDocument/hover'] = function(_, result, ctx, config)
  config = config or {}
  config.focus_id = ctx.method
  local cekFileType = function()
    local isLspErr = false
    for _, v in pairs(ErrHove) do
      if v == vim.bo.filetype then
        isLspErr = true
      end
    end
    if isLspErr == true then
      return
    end
    ---@diagnostic disable-next-line: missing-parameter
    return vim.notify('No information available')
  end

  if not (result and result.contents) then
    return cekFileType()
  end
  local markdown_lines = vim.lsp.util.convert_input_to_markdown_lines(result.contents)
  markdown_lines = vim.lsp.util.trim_empty_lines(markdown_lines)
  if vim.tbl_isempty(markdown_lines) then
    return cekFileType()
  end
  return vim.lsp.util.open_floating_preview(markdown_lines, 'markdown', config)
end