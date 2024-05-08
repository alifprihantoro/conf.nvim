-- Set up nvim-cmp.
local kind_icons = {
  Text = '',
  Method = '',
  Function = '',
  Constructor = '',
  Field = '',
  Variable = '',
  Class = 'ﴯ',
  Interface = '',
  Module = '',
  Property = 'ﰠ',
  Unit = '',
  Value = '',
  Enum = '',
  Keyword = '',
  Snippet = '',
  Codeium = '',
  Color = '',
  File = '',
  Reference = '',
  Folder = '',
  EnumMember = '',
  Constant = '',
  Struct = '',
  Event = '',
  Operator = '',
  TypeParameter = '',
}
return {
  fields = { 'kind', 'abbr', 'menu' },
  format = function(_, vim_item)
    vim_item.kind = string.format(' %s ', kind_icons[vim_item.kind] or '')
    return vim_item
  end,
}
