local status, autopairs = pcall(require, 'nvim-autopairs')
if not status then
  return
end
local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
local cmp = require 'cmp'

autopairs.setup {
  disable_filetype = { 'TelescopePrompt', 'vim' },
  map_cr = false,
}
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
