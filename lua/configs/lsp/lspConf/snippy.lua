require('snippy').setup({
  scopes = {
    _ = {},
    lua = function(scopes)
      if vim.api.nvim_buf_get_name(0):find('_spec.lua$') then
        table.insert(scopes, 'busted')
      end
      return scopes
    end,
    javascript = { '_', 'html', 'javascript','typescriptreact' },
  },
  mappings = {
    is = {
      ['<Tab>'] = 'expand_or_advance',
      ['<S-Tab>'] = 'previous',
    },
    nx = {
      ['<leader>x'] = 'cut_text',
    },
  },
})
