local cmp = require 'cmp'
local M = {
  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.abort(),
  ['<CR>'] = cmp.mapping.confirm {
    behavior = cmp.ConfirmBehavior.Replace,
    select = true,
  },
  ['<Down>'] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    else
      fallback()
    end
  end, { 'i', 's' }),
  ['<Up>'] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    else
      fallback()
    end
  end, { 'i', 's' }),
  ['<C-j>'] = cmp.mapping(function()
    if cmp.visible() then
      cmp.select_next_item()
    else
      vim.cmd('normal j')
    end
  end, { 'i', 's' }),
  ['<C-k>'] = cmp.mapping(function()
    if cmp.visible() then
      cmp.select_prev_item()
    else
      vim.cmd('normal k')
    end
  end, { 'i', 's' }),
}
return M
