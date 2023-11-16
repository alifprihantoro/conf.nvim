return {
  {
    'mfussenegger/nvim-dap',
    event = 'BufWinEnter',
    lazy = true,
  },
  {
    'jbyuki/one-small-step-for-vimkind',
    event = 'BufWinEnter',
    lazy = true,
    config = function()
      require 'configs.dap'
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    event = 'BufWinEnter',
    dependencies = 'mfussenegger/nvim-dap',
    lazy = true,
    config = function()
      -- ,nerdfont for this setup
      require('dapui').setup()
    end,
  },
}
