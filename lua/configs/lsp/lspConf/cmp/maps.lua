local cmp = require 'cmp'
local map = cmp.mapping
local confirm = map.confirm {
  behavior = cmp.ConfirmBehavior.Replace,
  select = true,
}

local down = function(arg)
  return map(function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    else
      fallback()
    end
  end, arg)
end

local up = function(arg)
  return cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    else
      fallback()
    end
  end, arg)
end

local M = {
  ['<C-b>'] = map.scroll_docs(-4),
  ['<C-f>'] = map.scroll_docs(4),
  ['<C-Space>'] = map.complete(),
  ['<C-e>'] = map.abort(),
  ['<Tab>'] = down({ 'i', 's', 'c' }),
  ['<CR>'] = confirm,
  ['<Down>'] = down({ 'i', 's' }),
  ['<Up>'] = up({ 'i', 's' }),
  ['<C-j>'] = down({ 'i', 's', 'c' }),
  ['<C-k>'] = up({ 'i', 's', 'c' }),
}
return M
