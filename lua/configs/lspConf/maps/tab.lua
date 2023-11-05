local cmp = require 'cmp'
local map = cmp.mapping
local snippy = require 'snippy'
if snippy.can_expand() then
  snippy.expand()
  print('hello')
else
  map.confirm {
    behavior = cmp.ConfirmBehavior.Replace,
    select = true,
  }
  print('hello2')
end
