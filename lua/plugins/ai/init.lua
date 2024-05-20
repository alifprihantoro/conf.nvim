return {
  'Exafunction/codeium.vim',
  cmd = 'CodeiumToggle',
  lazy = true,
  init = function()
    vim.g.codeium_disable_bindings = 1
    vim.g.codeium_enabled = false
  end,
  config = function()
    vim.api.nvim_create_user_command('CodeiumChat', function()
      vim.fn['codeium#Chat']()
    end, {})
    local key = vim.keymap.set
    local opts = { expr = true, silent = true }
    key('i', '<C-g>', function()
      return vim.fn['codeium#Accept']()
    end, opts)
    key('i', '<c-p>', function()
      return vim.fn['codeium#CycleCompletions'](1)
    end, opts)
    key('i', '<c-n>', function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end, opts)
    key('i', '<c-x>', function()
      return vim.fn['codeium#Clear']()
    end, opts)
  end,
}
