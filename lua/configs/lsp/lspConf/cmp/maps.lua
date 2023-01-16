local cmp = require 'cmp'
local snippy = require('snippy')
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
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end
  end, arg)
end

local tab = function(arg)
  return map(function(fallback)
    if snippy.can_expand() then
      snippy.expand()
      return
    else
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end
  end, arg)
end

local M = {
  ['<C-b>'] = map.scroll_docs(-4),
  ['<C-f>'] = map.scroll_docs(4),
  ['<C-Space>'] = map.complete(),
  ['<C-e>'] = map.abort(),
  ['<Tab>'] = tab({ 'i' }),
  ['<CR>'] = confirm,
  ['<Down>'] = down({ 'i', 's' }),
  ['<Up>'] = up({ 'i', 's' }),
  ['<C-j>'] = down({ 'i', 's', 'c' }),
  ['<C-k>'] = up({ 'i', 's', 'c' }),
}
return M
