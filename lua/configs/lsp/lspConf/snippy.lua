require('snippy').setup({
  scopes = {
    lua = function(scopes)
      if vim.api.nvim_buf_get_name(0):find('_spec.lua$') then
        table.insert(scopes, 'busted')
      end
      return scopes
    end,
    javascript = { '_', 'html', 'javascript', 'typescriptreact', 'typescript' },
    typescript = { '_', 'html', 'javascript', 'typescriptreact', 'typescript' },
    typescriptreact = { '_', 'javascriptreact', 'typescriptreact' },
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
